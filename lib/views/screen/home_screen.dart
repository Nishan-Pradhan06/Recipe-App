import 'package:flutter/material.dart';
import 'package:recipe/views/components/splash_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: const Column(
        children: [
          SplashButtonComponent(),
        ],
      ),
    );
  }
}
