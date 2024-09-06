import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipe/models/card_models.dart';

class CardACtionButtonComponent extends StatelessWidget {
  final Recipe recipe;
  const CardACtionButtonComponent({super.key, required this.recipe});

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
        const SizedBox(
          width: 20,
        ),
        Container(
          height: 24,
          width: 60,
          decoration: const BoxDecoration(
            color: Color(0xffe0e0e0),
            borderRadius: BorderRadius.all(
              Radius.circular(4),
            ),
          ),
          child: GestureDetector(
            onTap: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(
                  'assets/icons/saved.svg',
                  height: 18,
                ),
                const Text("Save"),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
