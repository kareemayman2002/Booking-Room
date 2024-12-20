import 'package:booking_room/core/utils/assets.dart';
import 'package:booking_room/features/home/presentation/views/widgets/custom_event.dart';
import 'package:booking_room/features/home/presentation/views/widgets/custom_offer.dart';
import 'package:booking_room/features/home/presentation/views/widgets/gridview_event.dart';
import 'package:booking_room/features/home/presentation/views/widgets/gridview_offers.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  final List<Widget> children = [
    // // GridviewEvent(),
    // GridviewEvent(),
    // GridviewOffers()
  ];
  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   // backgroundColor: Colors.transparent,
        //   elevation: 0,
        //   leading: const Icon(Icons.menu, color: Colors.white),
        //   actions: const [
        //     Icon(Icons.notifications_none, color: Colors.white),
        //     SizedBox(width: 10),
        //   ],
        // ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Container(
            width: 60,
            height: 60,
            child: FloatingActionButton(
              backgroundColor: Color.fromRGBO(32, 71, 62, 0.59),
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
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: onItemTapped,
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
                label: 'Book'),
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
        body: CustomScrollView(
          slivers: [
            // SliverToBoxAdapter(child: Container(child:children.elementAt(selectedIndex),),),

          ],
        )
      ),
    );
  }
}

