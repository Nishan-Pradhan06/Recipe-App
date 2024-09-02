import 'package:flutter/material.dart';

class ChipTapProviders extends ChangeNotifier {
  final Map<String, bool> _selectedChips = {};
  bool isSelected(String title) => _selectedChips[title] ?? false;

  void onChipTap(String title) {
    _selectedChips.update(title, (value) => !value, ifAbsent: () => true);
    notifyListeners();
  }
}
