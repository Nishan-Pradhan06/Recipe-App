import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:recipe/core/theme/colors.dart';
import '../../providers/bottom_navigator_providers.dart';

class BottomNavigatorBarComponent extends StatelessWidget {
  const BottomNavigatorBarComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<BottomNavigatorProviders>(
        builder: (context, bottomNavProvider, child) {
          return IndexedStack(
            index: bottomNavProvider.currentIndex,
            children: bottomNavProvider.screens,
          );
        },
      ),
      bottomNavigationBar: Consumer<BottomNavigatorProviders>(
        builder: (context, provider, child) {
          return BottomNavigationBar(
            currentIndex: provider.currentIndex,
            onTap: (index) {
              provider.onBottomNavigatorTap(
                  context, index); // Updated this line
            },
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/home.svg',
                  semanticsLabel: 'Home',
                  height: 24,
                  colorFilter: ColorFilter.mode(
                    provider.currentIndex == 0 ? AppColor.primary : Colors.grey,
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
                    provider.currentIndex == 1 ? AppColor.primary : Colors.grey,
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
                    provider.currentIndex == 2 ? AppColor.primary : Colors.grey,
                    BlendMode.srcIn,
                  ),
                ),
                label: 'Saved',
              ),
            ],
          );
        },
      ),
    );
  }
}
  