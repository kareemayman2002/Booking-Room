import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../features/auth/views/login_screen.dart';
import '../../features/splash/presentation/views/onboarding_one_screen.dart';
import '../../features/splash/presentation/views/onboarding_pageView.dart';
import '../../features/splash/presentation/views/splash_screen.dart';

class AppRouter{
  Route? generateRoute(RouteSettings settings){
    switch(settings.name){
      case '/':return MaterialPageRoute(builder: (_)=>SplashScreen());
      case 'onboardingScreen':return MaterialPageRoute(builder: (_)=>OnboardingPageview());
      case 'loginScreen':return MaterialPageRoute(builder: (_)=>LoginScreen());
      // case 'signupsScreen':return MaterialPageRoute(builder: (_)=>Rigester());
    }
  }
}