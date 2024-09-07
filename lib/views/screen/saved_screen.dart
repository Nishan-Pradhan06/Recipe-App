import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipe/views/components/appbar.dart';
import 'package:recipe/views/screen/recipe_description_screen.dart';
import 'package:recipe/providers/recipe_saved_provider.dart';
import '../components/card_action_button_component.dart';
import '../components/recipe_card.dart';
import '../components/heading.dart';
import '../components/sizebox.dart';
import '../components/sub_heading.dart';
import '../components/chip.dart';

class SavedScreen extends StatelessWidget {
  const SavedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 20),
          child: Column(
            children: [
              const Align(
                alignment: Alignment.topLeft,
                child: Heading(heading: "Recipes you have saved"),
              ),
              const SizeboxGap(),
              const Align(
                alignment: Alignment.centerLeft,
                child: SubHeading(title: "Filter by:"),
              ),
              SizedBox(
                height: 60,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: chipTitles.map((title) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: ChipComponents(
                        title: title,
                      ),
                    );
                  }).toList(),
                ),
              ),
              // Accessing the saved recipes
              Consumer<RecipeSavedProvider>(
                builder: (context, savedProvider, child) {
                  final savedRecipes = savedProvider.savedRecipe;

                  if (savedRecipes.isEmpty) {
                    return const Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: 200),
                        child: Text(
                          'No recipes saved yet',
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    );
                  }
                  return GridView.builder(
                    itemCount: savedRecipes.length,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 30.0,
                      mainAxisSpacing: 26.0,
                      childAspectRatio: 0.70,
                    ),
                    itemBuilder: (context, index) {
                      final recipe = savedRecipes[index];
                      return GestureDetector(
                        child: RecipeCard(
                          recipe: recipe,
                          actionButton:
                              CardActionButtonComponent(recipe: recipe),
                        ),
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => RecipeDescriptionScreen(
                                recipe: recipe,
                              ),
                            ),
                          );
                        },
                      );
                    },
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
