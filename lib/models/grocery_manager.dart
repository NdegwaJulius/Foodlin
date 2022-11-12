import 'package:flutter/material.dart';

import '../components/components.dart';

class GroceryManager extends ChangeNotifier {
  // 1
  final _groceryItems = <GroceryItem>[];

  // 2
  List<GroceryItem> get groceryItems => List.unmodifiable(_groceryItems);
  // 3
  void deleteItem(int index) {
    _groceryItems.removeAt(index);
    notifyListeners();
  }

  // 4
  void addItem(GroceryItem item) {
    _groceryItems.add(item);
    notifyListeners();
  }

  // 5
  void updateItem(GroceryItem item, int index) {
    _groceryItems[index] = item;
    notifyListeners();
  }

  // 6
  void completeItem(int index, bool change) {
    final item = _groceryItems[index];
    _groceryItems[index] = item.copyWith(isComplete: change);
    notifyListeners();
  }
}
/*
GroceryManager extends ChangeNotifier to notify its listeners about state
changes. Here’s how GroceryManager works:
1. This manager holds a private array of _groceryItems. Only the manager can
change and update grocery items.
2. Provides a public getter method for groceryItems, which is unmodifiable.
External entities can only read the list of grocery items.
3. deleteItem() deletes an item at a particular index.
4. addItem() adds a new grocery item at the end of the list.
5. updateItem() replaces the old item at a given index with a new item.
6. completeItem() toggles the isComplete flag on and off.
Each of these methods calls notifyListeners(). This notifies widgets of changes to
GroceryManager that require a rebuild.
*/
