import 'package:flutter/material.dart';
import '../components/chip.dart';
import '../components/sizebox.dart';

class SavedScreen extends StatelessWidget {
  const SavedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 20),
          child: Column(
            children: [
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Recipes you have \nsaved",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ),
              const SizeboxGap(),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Filter by:",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 60,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: chipTitles.map((title) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: ChipComponents(
                        title: title,
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
