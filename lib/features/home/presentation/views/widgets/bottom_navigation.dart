import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';
import '../home_screen.dart';

class BottomNavigation extends StatelessWidget {
   const BottomNavigation({super.key, this.onTap});
  final void Function(int)? onTap;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex:selectedIndex ,
      onTap: onTap,
      elevation: 5,
      items: [
        BottomNavigationBarItem(
          icon: Image.asset(
            AppAssets.home,
            width: 20,
            height: 20,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
            icon: Image.asset(
              AppAssets.book,
              width: 20,
              height: 20,
            ),
            label: 'Book'
        ),
        BottomNavigationBarItem(
            icon: Image.asset(
              AppAssets.offer,
              width: 20,
              height: 20,
            ),
            label: 'Offers'),
        BottomNavigationBarItem(
            icon: Image.asset(
              AppAssets.more,
              width: 20,
              height: 20,
            ),
            label: 'More'),
      ],
      type: BottomNavigationBarType.fixed,
    );
  }
}
void Function(int)? onTap;
