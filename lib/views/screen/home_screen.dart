import 'package:flutter/material.dart';
import 'package:recipe/views/components/search_box_component.dart';
import '../../core/constant/recipe_list.dart';
import '../components/chip.dart';
import '../components/recipe_card.dart';
import '../components/sizebox.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 20),
        child: Column(
          children: [
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Let's get cooking!",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
            const SizeboxGap(),
            const SearchBoxComponent(hintText: "I'm looking for?"),
            const SizeboxGap(),
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
            const SizeboxGap(),
            Expanded(
              child: GridView.builder(
                itemCount: recipes.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Two items per row
                  crossAxisSpacing: 8.0, // Spacing between items horizontally
                  mainAxisSpacing: 8.0, // Spacing between items vertically
                  childAspectRatio: 0.75, // Aspect ratio for each item
                ),
                itemBuilder: (context, index) {
                  return RecipeCard(recipe: recipes[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
