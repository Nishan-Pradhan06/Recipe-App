import 'package:flutter/material.dart';
import 'package:recipe/views/components/card_text.dart';
import 'package:recipe/views/components/card_action_button_component.dart';
import '../../models/card_models.dart';

class RecipeCard extends StatelessWidget {
  final Recipe recipe;
  const RecipeCard({
    super.key,
    required this.recipe, required CardActionButtonComponent actionButton,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: 150,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: const BorderRadius.all(
                Radius.circular(20),
              ),
              image: DecorationImage(
                image: NetworkImage(recipe.imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          CardText(title: recipe.title),
          const SizedBox(
            height: 6,
          ),
         CardActionButtonComponent(recipe: recipe),
        ],
      ),
    );
  }
}
