import 'package:flutter/material.dart';
import 'package:recipe/views/screen/home_screen.dart';
import 'package:recipe/views/screen/saved_screen.dart';
import 'package:recipe/views/screen/search_screen.dart';

class BottomNavigatorProviders extends ChangeNotifier {
  int _currentIndex = 0;
  int get currentIndex => _currentIndex;
  void onBottomNavigatorTap(BuildContext context, int index) {
    if (_currentIndex != index) {
      _currentIndex = index;
      switch (index) {
        case 0:
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const HomeScreen(),
            ),
          );
          break;
        case 1:
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const SearchScreen(),
            ),
          );
          break;
        case 2:
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const SavedScreen(),
            ),
          );
          break;
      }
      notifyListeners();
    }
  }
}
