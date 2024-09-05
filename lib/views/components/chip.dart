import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipe/core/theme/colors.dart';
import 'package:recipe/providers/chip_tap_providers.dart';

final List<String> chipTitles = [
  'All',
  'Breakfast',
  'Lunch',
  'Dinner',
  'Appetizer',
];

class ChipComponents extends StatelessWidget {
  final String title;
  const ChipComponents({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<ChipTapProviders>(
      builder: (context, chipProviders, child) {
        return GestureDetector(
          onTap: () {
            chipProviders.onChipTap(title);
          },
          child: Chip(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
            ),
            backgroundColor: chipProviders.isSelected(title)
                ? AppColor.primary
                : AppColor.chipBackground,
            side: BorderSide.none,
            label: Text(
              title,
              style: TextStyle(
                color: chipProviders.isSelected(title)
                    ? Colors.white
                    : AppColor.primary,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
        );
      },
    );
  }
}
