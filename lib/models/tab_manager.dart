import 'package:flutter/material.dart';

class TabManager extends ChangeNotifier {
  // 2
  int selectedTab = 0;
  // 3
  void goToTab(index) {
    // 4
    selectedTab = index;
    // 5
    notifyListeners();
  }

  // 6
  void goToRecipes() {
    selectedTab = 1;
    // 7
    notifyListeners();
  }
}
/*
TabManager manages the tab index that the user taps. This code does the following:
1. TabManager extends ChangeNotifier. This allows the object to provide change
notifications to its listeners.
2. selectedTab keeps track of which tab the user tapped.
3. goToTab() is a simple function that modifies the current tab index.
4. Stores the index of the new tab the user tapped.
5. Calls notifyListeners() to notify all widgets listening to this state.
6. goToRecipes() is a specific function that sets selectedTab to the Recipes tab,
which is at index 1.
7. Notifies all widgets listening to TabManager that Recipes is the selected tab.
*/
