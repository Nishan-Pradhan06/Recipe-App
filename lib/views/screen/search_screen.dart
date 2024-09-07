import 'package:flutter/material.dart';
import 'package:recipe/views/components/appbar.dart';
import 'package:recipe/views/components/heading.dart';
import 'package:recipe/views/components/sub_heading.dart';
import 'package:recipe/views/screen/recipe_description_screen.dart';
import '../../core/constant/recipe_list.dart';
import '../components/card_action_button_component.dart';
import '../components/chip.dart';
import '../components/recipe_card.dart';
import '../components/search_box_component.dart';
import '../components/sizebox.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

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
                child: Heading(heading: "Discover the best recipes!"),
              ),
              const SizeboxGap(),
              const SearchBoxComponent(
                hintText: "Search recipes",
              ),
              const SizeboxGap(),
              const Align(
                alignment: Alignment.centerLeft,
                child: SubHeading(title: "Recent searches"),
              ),
              SizedBox(
                height: 60,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: chipTitles.map((title) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: ChipComponents(
                        title: title,
                      ),
                    );
                  }).toList(),
                ),
              ),
              const SizeboxGap(),
              GridView.builder(
                itemCount: recipes.length,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 30.0,
                  mainAxisSpacing: 26.0,
                  childAspectRatio: 0.70,
                ),
                itemBuilder: (context, index) {
                  final recipe = recipes[index];
                  return GestureDetector(
                    child: RecipeCard(
                      recipe: recipe,
                      actionButton: CardActionButtonComponent(recipe: recipe),
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => RecipeDescriptionScreen(recipe: recipe,),
                        ),
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
