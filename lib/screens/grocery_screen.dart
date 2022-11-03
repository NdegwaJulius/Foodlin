import 'package:flutter/material.dart';
import 'package:foodlin/components/components.dart';
import 'package:foodlin/screens/grocery_list_screen.dart';
import 'package:provider/provider.dart';

class GroceryScreen extends StatelessWidget {
  const GroceryScreen({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: Replace with EmptyGroceryScreen
    //return const EmptyGroceryScreen();
    return Scaffold(
      // 6
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          // TODO: Present GroceryItemScreen
          // 1
          final manager = Provider.of<GroceryManager>(context, listen: false);
// 2
          Navigator.push(
            context,
            // 3
            MaterialPageRoute(
              // 4
              builder: (context) => GroceryItemScreen(
                // 5
                onCreate: (item) {
                  // 6
                  manager.addItem(item);
                  // 7
                  Navigator.pop(context);
                },
                // 8
                onUpdate: (item) {},
              ),
            ),
          );
        },
      ),
      // 7
      body: buildGroceryScreen(),
    );
  }

// TODO: Add buildGroceryScreen
  Widget buildGroceryScreen() {
    // 1
    return Consumer<GroceryManager>(
      // 2
      builder: (context, manager, child) {
        // 3
        if (manager.groceryItems.isNotEmpty) {
          // TODO: Add GroceryListScreen
          return GroceryListScreen(manager: manager);
        } else {
          // 4
          return const EmptyGroceryScreen();
        }
      },
    );
  }
}
/*
* buildGroceryScreen() is a helper function that decides which widget tree to
construct. Here’s how it works:
1. You wrap your widgets inside a Consumer, which listens for GroceryManager
state changes.
2. Consumer rebuilds the widgets below itself when the grocery manager items
changes.
3. If there are grocery items in the list, show the GroceryListScreen. You will
create this screen soon.
4. If there are no grocery items, show the EmptyGroceryScreen.
 */
