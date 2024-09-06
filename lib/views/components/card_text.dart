import 'package:flutter/material.dart';

class CardText extends StatelessWidget {
  final String title;
  const CardText({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
