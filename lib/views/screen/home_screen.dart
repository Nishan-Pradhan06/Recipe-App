import 'package:flutter/material.dart';
import 'package:recipe/core/constant/recipe_list.dart';
import 'package:recipe/views/components/appbar.dart';
import 'package:recipe/views/components/recipe_card.dart';
import 'package:recipe/views/components/search_box_component.dart';
import 'package:recipe/views/components/textbutton.dart';
import 'package:recipe/views/screen/recipe_description_screen.dart';
import '../components/card_action_button_component.dart';
import '../components/chip.dart';
import '../components/heading.dart';
import '../components/sizebox.dart';
import '../components/sub_heading.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 26, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Heading(heading: "Let's get cooking!"),
              const SizeboxGap(),
              const Padding(
                padding: EdgeInsets.only(right: 26),
                child: SearchBoxComponent(hintText: "I'm looking for?"),
              ),
              const SizeboxGap(),
              const Padding(
                padding: EdgeInsets.only(right: 26),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SubHeading(title: "Recently viewed"),
                    Textbutton(text: "See all", icon: Icons.arrow_forward),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 210,
                child: ListView.builder(
                  itemCount: recipes.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final recipe = recipes[index];
                    return Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: GestureDetector(
                        child: RecipeCard(
                          recipe: recipe,
                          actionButton: CardActionButtonComponent(
                              recipe:
                                  recipe), // Use the action button component
                        ),
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => RecipeDescriptionScreen(
                                  recipe:
                                      recipe), // Pass the recipe to the next screen
                            ),
                          );
                        },
                      ),
                    );
                  },
                ),
              ),
              const SizeboxGap(),
              const SubHeading(title: "Category"),
              SizedBox(
                height: 60,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: chipTitles.map((title) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: ChipComponents(
                        title: title,
                      ),
                    );
                  }).toList(),
                ),
              ),
              SizedBox(
                height: 210,
                child: ListView.builder(
                    itemCount: recipes.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      final recipe = recipes[index];
                      return Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: GestureDetector(
                          child: RecipeCard(
                            recipe: recipe,
                            actionButton: CardActionButtonComponent(
                                recipe:
                                    recipe), // Use the action button component
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
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
