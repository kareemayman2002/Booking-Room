import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

import '../../../../core/utils/assets.dart';
import '../../../../core/utils/colors.dart';

class EventDetailsScreen extends StatelessWidget {
  EventDetailsScreen({super.key});

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: double.infinity,
            height: 454,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppAssets.event_details),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 10,
            right: 10,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(
                size: 30,
                Icons.favorite,
                color: Colors.tealAccent,
              ),
            ),
          ),
          Positioned(
              right: 160,
              top: 25,
              child: Text("Event",
                  style: TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w500))),
          Positioned(
              top: 10,
              left: 10,
              child: MaterialButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.arrow_back_ios_outlined,
                  color: Colors.black,
                ),
              )),
          Positioned(
              bottom: 150,
              left: 24,
              child: Container(
                padding: EdgeInsets.only(left: 10),
                height: 33,
                width: 75,
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
                      "Roxy",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 12),
                    ),
                  ],
                ),
              )),
          Positioned(
            bottom: 110,
            left: 140,
            child: Center(
              child: DotsIndicator(
                dotsCount: 6,
                position: currentIndex,
                decorator: DotsDecorator(
                  size: const Size.square(10.0),
                  activeSize: const Size.square(10.0),
                  color: const Color.fromRGBO(117, 200, 183, 0.48),
                  // Inactive color
                  activeColor: AppColors.iconDrawer,
                ),
              ),
            ),
          ),
          Positioned(
            height: 400,
              top: 358,
              child: Container(
                width: 390,
                height: 496,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(32),
                        topLeft: Radius.circular(32))),
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Text(
                        "Details",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: AppColors.iconDrawer),
                      ),
                    ),

                    TimelineTile(
                      beforeLineStyle: LineStyle(color: AppColors.iconDrawer,),
                      afterLineStyle: LineStyle(color: AppColors.iconDrawer,),
                       alignment: TimelineAlign.start,
                      lineXY: 0.3,
                      indicatorStyle:
                      IndicatorStyle(color:AppColors.iconDrawer,indicatorXY: 0.5,),

                      endChild: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                            "We will learn how to make ceramics and use them after that"),
                      ),
                    ),
                    TimelineTile(
                      beforeLineStyle: LineStyle(color: AppColors.iconDrawer),
                      alignment: TimelineAlign.start,
                      indicatorStyle:
                      IndicatorStyle(color: AppColors.iconDrawer),
                      endChild: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                            "The workshop will last for one day and last 3 hours."),
                      ),
                    ),
                    TimelineTile(
                      beforeLineStyle: LineStyle(color: AppColors.iconDrawer),
                      alignment: TimelineAlign.start,
                      indicatorStyle:
                      IndicatorStyle(color: AppColors.iconDrawer),
                      endChild: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                            "We will learn about the types of clay to differentiate the final result of the product"),
                      ),
                    ),
                    TimelineTile(
                      beforeLineStyle: LineStyle(color: AppColors.iconDrawer),
                      alignment: TimelineAlign.start,
                      indicatorStyle:
                      IndicatorStyle(color: AppColors.iconDrawer),
                      endChild: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                            "How do I make shapes with clay without them cracking?"),
                      ),
                    ),
                    TimelineTile(
                      beforeLineStyle: LineStyle(color: AppColors.iconDrawer),
                      alignment: TimelineAlign.start,
                      indicatorStyle:
                      IndicatorStyle(color: AppColors.iconDrawer,),
                      endChild: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                            "We will burn the shapes we made and find out how they burn so that you can use them after that and live with you"),
                      ),
                    ),

                  ],
                ),
              )),
          Positioned(
            top: 707,
              left: 0,
              child: Container(
                width: 390,
            height: 80,
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.7),
                    blurRadius: 10,
                    spreadRadius: 7,
                    offset: const Offset(4, 0),
                  ),
                ],
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text("200.0 EGP/Person",
                    style:
                    TextStyle(fontSize: 16, fontWeight: FontWeight.w700,color: AppColors.iconDrawer)),
                MaterialButton(
                  height: 38,
                  color: AppColors.iconDrawer,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Book Now",
                    style:
                    TextStyle(fontSize: 16, fontWeight: FontWeight.w400,color: Colors.white),),
                )
              ],
            ),
          ))
        ],
      ),
    ));
  }
}
