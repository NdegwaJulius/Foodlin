import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/components.dart';

class EmptyGroceryScreen extends StatelessWidget {
  const EmptyGroceryScreen({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: Replace and add layout widgets
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // TODO: Add empty image
            Flexible(
              child: AspectRatio(
                aspectRatio: 1 / 1,
                child: Image.asset('assets/fooderlich_assets/empty_list.png'),
              ),
            ),
            // TODO: Add empty screen title
            Text(
              'No Groceries',
              style: Theme.of(context).textTheme.headline6,
            ),
            // TODO: Add empty screen subtitle
            const SizedBox(height: 16.0),
            const Text(
              'Shopping for ingredients?\n'
              'Tap the + button to write them down!',
              textAlign: TextAlign.center,
            ),
            // TODO: Add browse recipes button
            MaterialButton(
              textColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              color: Colors.green,
              onPressed: () {
                // TODO: Go to Recipes Tab
                Provider.of<TabManager>(context, listen: false).goToRecipes();
              },
              child: const Text('Browse Recipes'),
            ),
          ],
        ),
      ),
    );
  }
}

/*
1. Flexible gives a child the ability to fill the available space in the main axis.
2. AspectRatio sizes its child to the specified aspectRatio. Although aspectRatio
is a double, the Flutter documentation recommends writing it as width / 
height instead of the calculated result. In this case, you want a square aspect 
ratio of 1 / 1 and not 1.0
*/
