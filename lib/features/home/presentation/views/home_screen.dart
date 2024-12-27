import 'package:booking_room/core/utils/assets.dart';
import 'package:booking_room/core/utils/colors.dart';
import 'package:booking_room/features/event/presentation/views/event_details_screen.dart';
import 'package:booking_room/features/home/presentation/views/widgets/custom_drawer.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

import '../../../event/presentation/views/event_screen.dart';
import '../../../offer/presentation/views/offers_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // var scaffoldKey = GlobalKey<ScaffoldState>();
  int selectedIndex = 0;
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  final items = [
    Image.asset(AppAssets.review),
    Image.asset(AppAssets.review),
    Image.asset(AppAssets.review),
    Image.asset(AppAssets.review),
    Image.asset(AppAssets.review),
  ];

  final List<Widget>Screen=[
    HomeScreen(),
    EventScreen(),
    OffersScreen(),

  ];

  int currentIndex = 0;

  void onItemTapped(index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: scaffoldKey,
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
        bottomNavigationBar: BottomNavigationBar(
          currentIndex:selectedIndex ,
          // onTap: onItemTapped,
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
        drawer: Drawer(
          width: 250,
          child:  CustomDrawer(),
        ),

        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: Screen.elementAt(selectedIndex),),
            // القسم العلوي بالصورة والأيقونات
            SliverToBoxAdapter(
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.25,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(AppAssets.event),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    right: 10,
                    child: IconButton(
                      icon: const Icon(Icons.notifications),
                      color: Colors.white,
                      onPressed: () {
                        // فتح صفحة الإشعارات
                        Navigator.pushNamed(context, 'notificationScreen');
                      },
                    ),
                  ),
                  Positioned(
                      top: 10,
                      left: 10,
                      child: MaterialButton(
                        onPressed: () {
                          setState(() {
                            scaffoldKey.currentState!.openDrawer();
                          });
                        },
                        child: const Icon(Icons.menu,color: Colors.white,),
                      )),
                  Positioned(
                    bottom: 42,
                    right: 20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          width: 51,
                          height: 22,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: AppColors.iconDrawer,
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.star, color: Colors.yellow),
                              Text("4.7",
                                  style: TextStyle(color: Colors.white)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                      bottom: 70,
                      left: 10,
                      child: Container(
                        height: 33,
                        width: 123,
                        decoration: BoxDecoration(
                            color: AppColors.iconDrawer,
                            borderRadius: BorderRadius.circular(20)),
                        child: const Row(
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              color: Colors.white,
                            ),
                            Text(
                              "Course Location",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12),
                            ),
                          ],
                        ),
                      )),
                  Positioned(
                    bottom: 10,
                    left: 10,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          " Course Name",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        const SizedBox(height: 5),
                        DotsIndicator(
                          dotsCount: items.length,
                          position: currentIndex,
                          decorator: const DotsDecorator(
                            size: Size.square(10.0),
                            activeSize: Size.square(10.0),
                            color: Color.fromRGBO(117, 200, 183, 0.48),
                            // Inactive color
                            activeColor: AppColors.iconDrawer,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // قسم الريفيو
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                child: Text(
                  "Reviews",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: CarouselSlider(
                  options: CarouselOptions(
                    autoPlay: true,
                    aspectRatio: 2.0,
                    enlargeCenterPage: true,
                    onPageChanged: (index, reason) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                  ),
                  items: items),
            ),
            SliverToBoxAdapter(
                child: DotsIndicator(
              dotsCount: items.length,
              position: currentIndex,
              decorator: DotsDecorator(
                size: const Size.square(12.0),
                activeSize: const Size.square(12.0),
                color: Color.fromRGBO(117, 200, 183, 0.48),
                // Inactive color
                activeColor: AppColors.iconDrawer,
              ),
            )),

            // ListView(
            // scrollDirection: Axis.horizontal,
            // children: [
            // _buildReviewImage(AppAssets.review),
            // _buildReviewImage(AppAssets.review),
            // _buildReviewImage(AppAssets.review),
            // _buildReviewImage(AppAssets.review),
            // _buildReviewImage(AppAssets.review),
            //
            // ],
            // ),
            // ),
            // النقاط التفاعلية
            // const SliverToBoxAdapter(
            // child: Padding(
            // padding: EdgeInsets.symmetric(vertical: 10),
            // child: Row(
            // mainAxisAlignment: MainAxisAlignment.center,
            // children: [
            // Icon(Icons.circle, size: 8, color: Colors.grey),
            // SizedBox(width: 5),
            // Icon(Icons.circle, size: 8, color: Colors.black),
            // SizedBox(width: 5),
            // Icon(Icons.circle, size: 8, color: Colors.grey),
            // SizedBox(width: 5),
            // Icon(Icons.circle, size: 8, color: Colors.grey),
            // ],
            // ),
            // ),
            // ),
            // قسم التصنيفات
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  "Categories",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),

            SliverToBoxAdapter(
              child: ClipPath(
                clipper: RoundedDiagonalPathClipper(),
                child: Container(
                  width: 342,
                  height: 200,
                  color: const Color.fromRGBO(32, 71, 62, 0.65),
                  child: Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        "Courses",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 24,
                            color: Colors.white),
                      ),
                      Image.asset(
                        AppAssets.onboarding_1,
                        width: 174,
                        height: 151,
                      ),
                    ],
                  )),
                ),
              ),
            ),

            SliverToBoxAdapter(
              child: ClipPath(
                clipper: RoundedDiagonalPathClipper(),
                child: Container(
                  width: 163,
                  height: 250,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50.0)),
                    color: Colors.orange,
                  ),
                  child: Center(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        "Event",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: Colors.white),
                      ),
                      Image.asset(
                        AppAssets.eventcat,
                        width: 125,
                        height: 111,
                      ),
                    ],
                  )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

// Widget _buildReviewImage(String imagePath) {
//   return Padding(
//     padding: const EdgeInsets.symmetric(horizontal: 8),
//     child: Container(
//       width: 217,
//       height: 149,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(10),
//       ),
//       child: Image.asset(
//         imagePath,
//         width: 80,
//         height: 80,
//         fit: BoxFit.cover,
//       ),
//     ),
//   );
// }
}
