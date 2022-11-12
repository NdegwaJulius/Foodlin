import 'package:flutter/painting.dart';

// 1
enum Importance {
  low,
  medium,
  high,
}

class GroceryItem {
  // 2
  final String id;
  // 3
  final String name;
  final Importance importance;
  final Color color;
  final int quantity;
  final DateTime date;
  final bool isComplete;
  GroceryItem({
    required this.id,
    required this.name,
    required this.importance,
    required this.color,
    required this.quantity,
    required this.date,
    this.isComplete = false,
  });
  // 4
  GroceryItem copyWith({
    String? id,
    String? name,
    Importance? importance,
    Color? color,
    int? quantity,
    DateTime? date,
    bool? isComplete,
  }) {
    return GroceryItem(
        id: id ?? this.id,
        name: name ?? this.name,
        importance: importance ?? this.importance,
        color: color ?? this.color,
        quantity: quantity ?? this.quantity,
        date: date ?? this.date,
        isComplete: isComplete ?? this.isComplete);
  }
}
// 1. Importance is an enum that you’ll use to tag the importance of an item: low,
// medium or high.
// 2. Each GroceryItem must have a unique id to differentiate the items from one
// other.
// 3. A user can set the name, level of importance, color label, quantity and date, as
// well as marking completed items.
// 4. copyWith copies and creates a completely new instance of GroceryItem. This
// will be useful later, when you manage the state of the items.
