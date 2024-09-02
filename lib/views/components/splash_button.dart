import 'package:flutter/material.dart';
import 'package:recipe/core/theme/colors.dart';
import 'package:recipe/views/screen/home_screen.dart';

class SplashButtonComponent extends StatelessWidget {
  const SplashButtonComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(AppColor.primary),
        foregroundColor: WidgetStateProperty.all(Colors.white),
        padding: WidgetStateProperty.all(
            const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0)),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      ),
      onPressed: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const HomeScreen(),
          ),
        );
      },
      child: const Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("Let's Start"),
          SizedBox(width: 40.0),
          Icon(Icons.arrow_forward),
        ],
      ),
    );
  }
}
