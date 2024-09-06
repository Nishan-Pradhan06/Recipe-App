import 'package:flutter/material.dart';

class Textbutton extends StatelessWidget {
  final String text;
  final IconData icon;
  const Textbutton({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          child: Text(
            text,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.orange,
            ),
          ),
          onTap: () {},
        ),
        const SizedBox(
          width: 8,
        ),
        Icon(
          icon,
          size: 12,
          color: Colors.orange,
        ),
      ],
    );
  }
}

class TextButtonReverse extends StatelessWidget {
  final String text;
  final IconData icon;
  const TextButtonReverse({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 12,
          color: Colors.orange,
        ),
        const SizedBox(
          width: 8,
        ),
        GestureDetector(
          child: Text(
            text,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.orange,
            ),
          ),
          onTap: () {
              Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
