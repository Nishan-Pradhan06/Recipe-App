import 'package:flutter/material.dart';
import 'package:recipe/views/screen/home_screen.dart';
import 'package:recipe/views/screen/saved_screen.dart';
import 'package:recipe/views/screen/search_screen.dart';

class BottomNavigatorProviders extends ChangeNotifier {
  int _currentIndex = 0;
  int get currentIndex => _currentIndex;
  final List<Widget> screens = [
    const HomeScreen(),
    const SearchScreen(),
    const SavedScreen(),
  ];

  void onBottomNavigatorTap(BuildContext context, int index) {
    _currentIndex = index;
    notifyListeners();
  }
}
