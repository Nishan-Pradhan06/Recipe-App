import 'package:flutter/material.dart';
import '../models/card_models.dart';

class RecipeSavedProvider extends ChangeNotifier {
  final List<Recipe> _saved = [];

  List<Recipe> get savedRecipe => _saved;

  bool isSaved(Recipe recipe) {
    return _saved.contains(recipe);
  }

  void addToSaved(Recipe recipe) {
    if (!_saved.contains(recipe)) {
      _saved.add(recipe);
      notifyListeners();
    }
  }

  void removeFromSaved(Recipe recipe) {
    if (_saved.contains(recipe)) {
      _saved.remove(recipe);
      notifyListeners();
    }
  }

  // Optionally, you can toggle the saved status of a recipe
  void toggleSaved(Recipe recipe) {
    if (isSaved(recipe)) {
      removeFromSaved(recipe);
    } else {
      addToSaved(recipe);
    }
  }
}
