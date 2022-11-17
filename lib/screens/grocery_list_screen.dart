import 'package:flutter/material.dart';
import 'package:foodlin/components/components.dart';

class GroceryListScreen extends StatelessWidget {
  final GroceryManager manager;
  const GroceryListScreen({
    super.key,
    required this.manager,
  });
  @override
  Widget build(BuildContext context) {
    // TODO: Replace with ListView
    // 1
    final groceryItems = manager.groceryItems;
// 2
    return Padding(
      padding: const EdgeInsets.all(16.0),
      // 3
      child: ListView.separated(
        // 4
        itemCount: groceryItems.length,
        itemBuilder: (context, index) {
          final item = groceryItems[index];
          // TODO: Wrap in a Dismissable
          // TODO: Wrap in an InkWell
          // 5
          return InkWell(
            child: GroceryTile(
                key: Key(item.id),
                item: item,
                onComplete: (change) {
                  if (change != null) {
                    manager.completeItem(index, change);
                  }
                }),
            // 2
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => GroceryItemScreen(
                    originalItem: item,
                    // 3
                    onUpdate: (item) {
                      // 4
                      manager.updateItem(item, index);
                      // 5
                      Navigator.pop(context);
                    },
                    // 6
                    onCreate: (item) {},
                  ),
                ),
              );
            },
          );
        },
        // 8
        separatorBuilder: (context, index) {
          return const SizedBox(height: 16.0);
        },
      ),
    );
  }
}
/*
* In the code above, you:
1. Get the list of grocery items from the manager.
2. Apply padding of 16 pixels all around this screen.
3. Add ListView.
4. Set the number of items in the list.
5. For each item in the list, get the current item and construct a GroceryTile.
6. Return onComplete when the user taps the checkbox.
7. Check if there is a change and update the item’s isComplete status.
8. Space each grocery item 16 pixels apart.
* */
