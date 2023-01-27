import 'package:apprentice_flutter/models/models.dart';
import 'package:flutter/material.dart';
import '../fooderlich_theme.dart';

class Card1 extends StatelessWidget {
  final ExploreRecipe recipe;

  const Card1({Key? key, required this.recipe}) : super(key: key);

  final String category = 'Editor\'s Choice';
  final String title = 'The Art of Dough';
  final String description = 'Learn to make the perfect bread.';
  final String chef = 'Ray Wenderlich';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(16),
        constraints: const BoxConstraints.expand(
          width: 239,
          height: 430,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(recipe.backgroundImage),
            fit: BoxFit.cover,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        child: Stack(
          children: [
            Text(
              recipe.subtitle,
              style: FooderlichTheme.darkTextTheme.titleMedium,
            ),
            Positioned(
              top: 20,
              child: Text(
                recipe.title,
                style: FooderlichTheme.darkTextTheme.titleLarge,
              ),
            ),
            Positioned(
              bottom: 30,
              right: 0,
              child: Text(
                recipe.message,
                style: FooderlichTheme.darkTextTheme.bodyLarge,
              ),
            ),
            Positioned(
              bottom: 10,
              right: 0,
              child: Text(
                recipe.authorName,
                style: FooderlichTheme.darkTextTheme.bodySmall,
              ),
            )
          ],
        ),
      ),
    );
  }
}
