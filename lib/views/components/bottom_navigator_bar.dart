import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart'; // Import flutter_svg package
import 'package:provider/provider.dart';
import '../../providers/bottom_navigator_providers.dart';

class BottomNavigatorBarComponent extends StatelessWidget {
  const BottomNavigatorBarComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<BottomNavigatorProviders>(
      builder: (context, provider, child) {
        return BottomNavigationBar(
          currentIndex: provider.currentIndex,
          onTap: (index) {
            provider.onBottomNavigatorTap(context, index);
          },
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/home.svg',
                semanticsLabel: 'Home',
                height: 24, 
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/search.svg',
                semanticsLabel: 'Search',
                height: 24, 
              ),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/saved.svg',
                semanticsLabel: 'Saved',
                height: 24,
              ),
              label: 'Saved',
            ),
          ],
        );
      },
    );
  }
}
