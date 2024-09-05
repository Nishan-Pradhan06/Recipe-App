import 'package:flutter/material.dart';
import 'package:recipe/views/components/appbar.dart';
import 'package:recipe/views/screen/recipe_description_screen.dart';
import '../../core/constant/recipe_list.dart';
import '../components/chip.dart';
import '../components/heading.dart';
import '../components/recipe_card.dart';
import '../components/sizebox.dart';
import '../components/sub_heading.dart';

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
              GridView.builder(
                itemCount: recipes.length,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Two items per row
                  crossAxisSpacing: 8.0, // Spacing between items horizontally
                  mainAxisSpacing: 8.0, // Spacing between items vertically
                  childAspectRatio: 0.75, // Aspect ratio for each item
                ),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    child: RecipeCard(recipe: recipes[index]),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const RecipeDescriptionScreen(),
                        ),
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
