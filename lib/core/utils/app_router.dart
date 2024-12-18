import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../features/auth/presentation/views/forgot_passwprd_screen.dart';
import '../../features/auth/presentation/views/login_screen.dart';
import '../../features/auth/presentation/views/register_screen.dart';
import '../../features/auth/presentation/views/verify_code_screen.dart';
import '../../features/splash/presentation/views/onboarding_one_screen.dart';
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
    }
  }
}