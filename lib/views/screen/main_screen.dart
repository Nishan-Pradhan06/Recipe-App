import 'package:flutter/material.dart';
import 'package:recipe/views/components/bottom_navigator_bar.dart';
import 'package:recipe/views/screen/home_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeScreen(),
      bottomNavigationBar: BottomNavigatorBarComponent(),
    );
  }
}
