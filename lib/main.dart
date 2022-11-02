import 'package:flutter/material.dart';
import 'package:foodlin/components/components.dart';
import 'package:provider/provider.dart';

import 'fooderlich_theme.dart';
import 'home.dart';

void main() {
  runApp(const Fooderlich());
}

class Fooderlich extends StatelessWidget {
  const Fooderlich({super.key});
  @override
  Widget build(BuildContext context) {
    final theme = FooderlichTheme.light();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      title: 'Foodlin',
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => TabManager()),
          // TODO: Add GroceryManager Provider
        ],
        child: const Home(),
      ),
    );
  }
}
/*
1. You assign MultiProvider as a property of Home. This accepts a list of providers
for Home’s descendant widgets to access.
2. ChangeNotifierProvider creates an instance of TabManager, which listens to
tab index changes and notifies its listeners.
*/
