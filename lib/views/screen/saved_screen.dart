import 'package:flutter/material.dart';

import '../components/bottom_navigator_bar.dart';

class SavedScreen extends StatelessWidget {
  const SavedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
       bottomNavigationBar: const BottomNavigatorBarComponent(),
    );
  }
}