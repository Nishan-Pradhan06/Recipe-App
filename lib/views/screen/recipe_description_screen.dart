import 'package:flutter/material.dart';
import 'package:recipe/views/components/appbar.dart';
import 'package:recipe/views/components/sizebox.dart';
import 'package:recipe/views/components/sub_heading.dart';
import '../components/textbutton.dart';

final List<String> ingredients = [
  '1 pound ground chicken',
  '1/4 cup breadcrumbs',
  '1/4 cup finely chopped onion',
  '2 cloves garlic, minced',
  '1 teaspoon ground coriander',
  '1/2 teaspoon ground cumin',
  'Salt and pepper, to taste',
  '4 hamburger buns',
];

class RecipeDescriptionScreen extends StatelessWidget {
  const RecipeDescriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: ListView(
          children: [
            const TextButtonReverse(text: "Back", icon: Icons.arrow_back),
            const SizeboxGap(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(
                  'https://images.rawpixel.com/image_png_800/czNmcy1wcml2YXRlL3Jhd3BpeGVsX2ltYWdlcy93ZWJzaXRlX2NvbnRlbnQvbGlmZW9mcGl4MDAwMDEtaW1hZ2VfMS1renhsdXd3ci5wbmc.png'),
            ),
            const SubHeading(title: 'Delicious Chicken Burger'),
            Row(
              children: [
                const Row(
                  children: [
                    Icon(Icons.access_time, size: 16),
                    SizedBox(width: 4),
                    Text('30 min'), // Hardcoded cooking time
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      color: Colors.orange, // Hardcoded color for saved state
                      icon: const Icon(Icons.bookmark),
                    ),
                    const Text(
                      'Saved',
                      style: TextStyle(
                        color: Colors.orange, // Hardcoded color for saved state
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                "Ingredients:",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: ingredients.map((title) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Text("- $title"),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: const BottomNavigatorBarComponent(),
    );
  }
}
