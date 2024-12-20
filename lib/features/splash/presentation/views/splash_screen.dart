import 'dart:async';

import 'package:booking_room/core/utils/assets.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    setState(() {
      Timer(const Duration(seconds: 3),(){
        Navigator.pushNamed(context, "onboardingScreen");
      });
    });
    super.initState();
    // goToOnboarding();
  }

  // void goToOnboarding() {
  //
  // }
  @override
  Widget build(BuildContext context) {
    return
      Container(
        width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(image: DecorationImage(image: AssetImage(AppAssets.splash))),

    );
  }
}
