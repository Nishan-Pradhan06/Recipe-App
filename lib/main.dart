import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipe/providers/chip_tap_providers.dart';
import 'package:recipe/views/screen/splash_screen.dart';
import 'providers/bottom_navigator_providers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ChipTapProviders()),
        ChangeNotifierProvider(create: (_) => BottomNavigatorProviders()),
      ],
      child: MaterialApp(
        title: 'Recipe App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
        ),
        home: const SplashScreen(),
      ),
    );
  }
}
