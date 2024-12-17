import 'package:booking_room/features/splash/presentation/views/onboarding_two_screen.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'onboarding_one_screen.dart';
import 'onboarding_three_screen.dart';

class OnboardingPageview extends StatefulWidget {
  const OnboardingPageview({super.key});

  @override
  State<OnboardingPageview> createState() => OnboardingPageviewState();
}

final PageController _pageController = PageController(initialPage: currentPage);
int currentPage=0;
final List<Widget> _pages = [
  const OnboardingOneScreen(),
  const OnboardingTwoScreen(),
  const OnboardingThreeScreen(),
];

class OnboardingPageviewState extends State<OnboardingPageview> {
  @override
  Widget build(BuildContext context) {
    return Stack(
alignment: Alignment.bottomCenter,
      children: [
        PageView.builder(
            controller: _pageController,
            onPageChanged: (int page) {
              setState(() {
                currentPage = page;
              });
            },
            itemCount: _pages.length,
            itemBuilder: (context, index) {
              return _pages[index % _pages.length];
            }),
        Positioned(bottom: 135,child: AnimatedSmoothIndicator(effect: const WormEffect(
          activeDotColor: Color(0xffffffff),
          dotHeight: 11.0,
          dotWidth: 11.0
        ),activeIndex: currentPage, count: _pages.length)),
       Positioned(
            bottom: 40,
              child: OutlinedButton(
                  onPressed: () {
    final next = currentPage+1;
    currentPage == _pages.length-1 ? Navigator.pushNamed(context, 'loginScreen') : jumpToNextPage(next);
          },
              style: ElevatedButton.styleFrom(
                side: const BorderSide(color: Color(0xff20473E)),
                shape: const CircleBorder(),

               ),
              child: Container(
                height: 70,
                width: 70,
                decoration: const BoxDecoration(
                  color: Colors.black26,
                  shape: BoxShape.circle,

                ),
                child: const Icon(Icons.arrow_forward_outlined,color: Colors.white,),
              )),
        ),
      ],
    );
  }

  void jumpToNextPage(int nextPage) {
    setState(() {
      currentPage = nextPage;
    });
    _pageController.animateToPage(nextPage, duration: const Duration(milliseconds: 500), curve: Curves.ease);
  }
}
