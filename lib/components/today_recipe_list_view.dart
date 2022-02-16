import '../models/models.dart';
import 'package:flutter/material.dart';

import 'components.dart';

class TodayRecipeListView extends StatelessWidget {
  final List<ExploreRecipe> recipes;

  const TodayRecipeListView({
    Key? key,
    required this.recipes,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16.0,
        right: 16.0,
        top: 16.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recipes of the Day 🍳',
            style: Theme.of(context).textTheme.headline2,
          ),
          const SizedBox(
            height: 16.0,
          ),
          Container(
            height: 400,
            color: Colors.transparent,
            child: ListView.separated(
              itemBuilder: ((context, index) {
                final recipe = recipes[index];
                return buildCard(recipe);
              }),
              separatorBuilder: (context, index) {
                return const SizedBox(
                  width: 16.0,
                );
              },
              itemCount: recipes.length,
              scrollDirection: Axis.horizontal,
              primary: true,
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCard(ExploreRecipe recipe) {
    switch (recipe.cardType) {
      case RecipeCardType.card1:
        return Card1(recipe: recipe);
      case RecipeCardType.card2:
        return Card2(recipe: recipe);
      case RecipeCardType.card3:
        return Card3(recipe: recipe);
      default:
        throw Exception('This card doesn\'t exist yet.');
    }
  }

  // add buildCard() here
}
