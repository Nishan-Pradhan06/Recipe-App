import 'package:flutter/material.dart';
import 'package:recipe/views/components/appbar.dart';
import 'package:recipe/views/components/search_box_component.dart';
import '../components/chip.dart';
import '../components/sizebox.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:const CustomAppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 20),
            child: Column(
              children: [
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Let's get cooking!",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                ),
                const SizeboxGap(),
                const SearchBoxComponent(hintText: "I'm looking for?"),
                const SizeboxGap(),
                SizedBox(
                  height: 60,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: chipTitles.map((title) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: ChipComponents(
                          title: title,
                        ),
                      );
                    }).toList(),
                  ),
                ),
                // const SizeboxGap(),

               
              ],
            ),
          ),
        ),
      ),
    );
  }
}
