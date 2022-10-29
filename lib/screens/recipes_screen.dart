import 'package:flutter/material.dart';

import '../api/mock_fooderlich_service.dart';
import '../models/models.dart';

class RecipesScreen extends StatelessWidget {
  // 1
  final exploreService = MockFooderlichService();
  RecipesScreen({super.key});
  @override
  Widget build(BuildContext context) {
    // 2
    return FutureBuilder(
      // 3
      future: exploreService.getRecipes(),
      builder: (context, AsyncSnapshot<List<SimpleRecipe>> snapshot) {
        // 4
        if (snapshot.connectionState == ConnectionState.done) {
          // TODO: Add RecipesGridView Here
          // 5
          return const Center(child: Text('Recipes Screen'));
        } else {
          // 6
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
