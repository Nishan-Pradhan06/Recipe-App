import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:recipe/core/theme/colors.dart';
import 'package:recipe/models/card_models.dart';
import 'package:recipe/providers/recipe_saved_provider.dart';

class CardActionButtonComponent extends StatelessWidget {
  final Recipe recipe;
  const CardActionButtonComponent({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const Icon(Icons.access_time, size: 16),
            const SizedBox(width: 4),
            Text('${recipe.cookingTime} min'),
          ],
        ),
        const SizedBox(width: 20),
        GestureDetector(
          onTap: () {
            Provider.of<RecipeSavedProvider>(context, listen: false)
                .toggleSaved(recipe);
          },
          child: Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Consumer<RecipeSavedProvider>(
              builder: (context, savedProvider, child) {
                bool isSaved = savedProvider.isSaved(recipe);
                return Container(
                  height: 24,
                  width: 60,
                  decoration: BoxDecoration(
                    color: isSaved ? AppColor.primary : Colors.grey,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/saved1.svg',
                        colorFilter: const ColorFilter.mode(
                          Colors.white,
                          BlendMode.srcIn,
                        ),
                        height: 18,
                      ),
                      const SizedBox(width: 4),
                      const Text(
                        "Save",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
