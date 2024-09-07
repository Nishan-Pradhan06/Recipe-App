import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipe/views/components/bottom_navigator_bar.dart';
import '../../providers/bottom_navigator_providers.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<BottomNavigatorProviders>(
      builder: (context, provider, child) {
        return Scaffold(
          body: provider.screens[provider.currentIndex],
          bottomNavigationBar:
              const BottomNavigatorBarComponent(),
        );
      },
    );
  }
}
