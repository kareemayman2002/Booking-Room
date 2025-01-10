import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../features/auth/presentation/views/forgot_passwprd_screen.dart';
import '../../features/auth/presentation/views/login_screen.dart';
import '../../features/auth/presentation/views/register_screen.dart';
import '../../features/auth/presentation/views/verify_code_screen.dart';
import '../../features/book/presentation/views/book_screen.dart';
import '../../features/course/presentation/views/course_screen.dart';
import '../../features/event/presentation/views/event_details_screen.dart';
import '../../features/home/presentation/views/home_screen.dart';
import '../../features/home/presentation/views/home_screen_body.dart';
import '../../features/home/presentation/views/notification_screen.dart';
import '../../features/splash/presentation/views/onboarding_pageView.dart';
import '../../features/splash/presentation/views/splash_screen.dart';

class AppRouter{
  Route? generateRoute(RouteSettings settings){
    switch(settings.name){
      case '/':return MaterialPageRoute(builder: (_)=>const SplashScreen());
      case 'onboardingScreen':return MaterialPageRoute(builder: (_)=>const OnboardingPageview());
      case 'loginScreen':return MaterialPageRoute(builder: (_)=>LoginScreen());
       case 'registerScreen':return MaterialPageRoute(builder: (_)=>RegisterScreen());
       case 'verifyCodeScreen':return MaterialPageRoute(builder: (_)=>const VerifyCodeScreen());
       case 'forgotPasswordScreen':return MaterialPageRoute(builder: (_)=>ForgotPasswordScreen());
       case 'homeScreen':return MaterialPageRoute(builder: (_)=>HomeScreen());
       case 'courseScreen':return MaterialPageRoute(builder: (_)=>CourseScreen());
       case 'notificationScreen':return MaterialPageRoute(builder: (_)=>NotificationScreen());
       case 'eventDetailsScreen':return MaterialPageRoute(builder: (_)=>EventDetailsScreen());
       case 'bookScreen':return MaterialPageRoute(builder: (_)=>BookScreen());
       // case 'm':return MaterialPageRoute(builder: (_)=>M());
    }
  }
}