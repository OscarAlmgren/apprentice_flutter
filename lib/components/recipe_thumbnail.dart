import 'package:apprentice_flutter/models/models.dart';
import 'package:flutter/material.dart';

class RecipeThumbnail extends StatelessWidget {
  final SimpleRecipe recipe;

  const RecipeThumbnail({Key? key, required this.recipe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: Image.asset(recipe.dishImage),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            recipe.title,
            style: Theme.of(context).textTheme.bodyLarge,
            maxLines: 1,
          ),
          Text(
            recipe.duration,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
