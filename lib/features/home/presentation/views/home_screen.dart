import 'package:booking_room/core/utils/assets.dart';
import 'package:booking_room/core/utils/colors.dart';
import 'package:booking_room/features/home/presentation/views/widgets/custom_drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // var scaffoldKey = GlobalKey<ScaffoldState>();
  int selectedIndex = 0;
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  void onItemTapped(int index) {
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
        drawer: Drawer(
          width: 250,
          child:  CustomDrawer(),
        ),

        body: CustomScrollView(
          slivers: [
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
                    bottom: 30,
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
                  const Positioned(
                    bottom: 10,
                    left: 10,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Course Name",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Icon(Icons.circle, size: 8, color: Colors.white),
                            SizedBox(width: 5),
                            Icon(Icons.circle, size: 8, color: Colors.white),
                            SizedBox(width: 5),
                            Icon(Icons.circle, size: 8, color: Colors.white),
                          ],
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
              child: SizedBox(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _buildReviewImage(AppAssets.review),
                    _buildReviewImage(AppAssets.review),
                    _buildReviewImage(AppAssets.review),
                    _buildReviewImage(AppAssets.review),
                    _buildReviewImage(AppAssets.review),

                  ],
                ),
              ),
            ),
            // النقاط التفاعلية
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.circle, size: 8, color: Colors.grey),
                    SizedBox(width: 5),
                    Icon(Icons.circle, size: 8, color: Colors.black),
                    SizedBox(width: 5),
                    Icon(Icons.circle, size: 8, color: Colors.grey),
                    SizedBox(width: 5),
                    Icon(Icons.circle, size: 8, color: Colors.grey),
                  ],
                ),
              ),
            ),
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
          ],
        ),
      ),
    );
  }

  Widget _buildReviewImage(String imagePath) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Container(
        width: 217,
        height: 149,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Image.asset(
          imagePath,
          width: 80,
          height: 80,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
