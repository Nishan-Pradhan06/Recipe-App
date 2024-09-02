import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipe/views/components/splash_button.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 30),
          child: Column(
            children: [
              SvgPicture.asset(
                'assets/logo/logo.svg',
                height: 28,
                width: 28,
              ),
              SvgPicture.asset(
                'assets/logo/Frame.svg',
              ),
              const Text(
                'Get ready to cook like a Pro.',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'Master the art of cooking with our stunning recipe visual and step-by-step instructions.',
                style: TextStyle(fontSize: 16),
              ),
              // const Spacer(),
              const Padding(
                padding: EdgeInsets.only(top: 60),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: SplashButtonComponent(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
