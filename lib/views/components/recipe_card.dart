import 'package:flutter/material.dart';
import 'package:recipe/views/components/card_text.dart';
import 'package:recipe/views/components/card_action_button_component.dart';
import '../../models/card_models.dart';

class RecipeCard extends StatelessWidget {
  final Recipe recipe;

  const RecipeCard({
    super.key,
    required this.recipe,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 140,
          width: 140,
          margin: const EdgeInsets.only(right: 16),
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
          height: 10,
        ),
        CardText(title: recipe.title),
        CardACtionButtonComponent(recipe: recipe)
      ],
    );
  }
}
