import 'package:booking_room/features/home/presentation/views/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/assets.dart';
import '../../../book/presentation/views/book_screen.dart';
import '../../../event/presentation/views/event_screen.dart';
import '../../../offer/presentation/views/offers_screen.dart';
import 'home_screen_body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
int selectedIndex = 0;
final List<Widget>Screen=[
  HomeScreenBody(),
  // EventScreen(),
  BookScreen(),
  OffersScreen(),
];


class _HomeScreenState extends State<HomeScreen> {
  void onItemTapped(index) {
    setState(() {
      selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex:selectedIndex ,
        onTap: onItemTapped,
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
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Container(
          width: 60,
          height: 60,
          child: FloatingActionButton(
            backgroundColor: const Color.fromRGBO(32, 71, 62, 0.59),
            onPressed: () {
              Navigator.pushNamed(context, 'courseScreen');
            },
            child: Image.asset(
              AppAssets.logo,
              width: 52,
              height: 52,
            ),
          ),
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex:selectedIndex ,
      //    onTap: onItemTapped,
      //   elevation: 5,
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Image.asset(
      //         AppAssets.home,
      //         width: 20,
      //         height: 20,
      //       ),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //         icon: Image.asset(
      //           AppAssets.book,
      //           width: 20,
      //           height: 20,
      //         ),
      //         label: 'Book'
      //     ),
      //     BottomNavigationBarItem(
      //         icon: Image.asset(
      //           AppAssets.offer,
      //           width: 20,
      //           height: 20,
      //         ),
      //         label: 'Offers'),
      //     BottomNavigationBarItem(
      //         icon: Image.asset(
      //           AppAssets.more,
      //           width: 20,
      //           height: 20,
      //         ),
      //         label: 'More'),
      //   ],
      //   type: BottomNavigationBarType.fixed,
      // ),

      body: Container(
        child: Screen.elementAt(selectedIndex),
      ),
    );
  }
}
