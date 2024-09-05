// lib/widgets/recipe_card.dart
import 'package:flutter/material.dart';
import '../../models/card_models.dart';

class RecipeCard extends StatelessWidget {
  final Recipe recipe;

  const RecipeCard({
    super.key,
    required this.recipe,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 4,
      margin:const  EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
            child: Image.network(
              recipe.imageUrl,
              height: 120,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  recipe.title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                       const Icon(Icons.access_time, size: 16),
                       const SizedBox(width: 4),
                        Text('${recipe.cookingTime} min'),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          recipe.isSaved
                              ? Icons.bookmark
                              : Icons.bookmark_border,
                          color: recipe.isSaved ? Colors.orange : Colors.grey,
                        ),
                       const  SizedBox(width: 4),
                        Text(
                          recipe.isSaved ? 'Saved' : '',
                          style: TextStyle(
                            color: recipe.isSaved ? Colors.orange : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
