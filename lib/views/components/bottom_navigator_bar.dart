import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipe/core/theme/colors.dart';
import 'package:recipe/views/screen/saved_screen.dart';
import '../screen/home_screen.dart';
import '../screen/search_screen.dart';

class BottomNavigatorBarComponent extends StatefulWidget {
  const BottomNavigatorBarComponent({super.key});

  @override
  State<BottomNavigatorBarComponent> createState() =>
      _BottomNavigatorBarComponentState();
}

class _BottomNavigatorBarComponentState
    extends State<BottomNavigatorBarComponent> {
  int myIndex = 0;

  final List<Widget> screens = [
    const HomeScreen(),
    const SearchScreen(),
    const SavedScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: myIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: myIndex,
        onTap: (index) {
          setState(() {
            myIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/home.svg',
              semanticsLabel: 'Home',
              height: 24,
              colorFilter: ColorFilter.mode(
                myIndex == 0 ? AppColor.primary : Colors.grey,
                BlendMode.srcIn,
              ),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/search.svg',
              semanticsLabel: 'Search',
              height: 24,
              colorFilter: ColorFilter.mode(
                myIndex == 1 ? AppColor.primary : Colors.grey,
                BlendMode.srcIn,
              ),
              
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/saved.svg',
              semanticsLabel: 'Saved',
              height: 24,
              colorFilter: ColorFilter.mode(
                myIndex == 2 ? AppColor.primary : Colors.grey,
                BlendMode.srcIn,
              ),
            ),
            label: 'Saved',
          ),
        ],
      ),
    );
  }
}
