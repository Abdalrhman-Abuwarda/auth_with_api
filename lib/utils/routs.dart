import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../modules/home/home_layout.dart';
import '../modules/login/login_screen.dart';
import '../modules/login/sign-up.dart';
import '../modules/messenger/messenger_sscreen.dart';
import '../modules/splash_page.dart';

class RouteGenerator{
  static const String splashPage = '/';
  static const String messangerPage = '/messanger';
  static const String loginPage = '/login';
  static const String signupPage = '/signup';

  RouteGenerator._();

  static Route<dynamic> generateRoute(RouteSettings settings){
    switch(settings.name){
      case splashPage:
        return MaterialPageRoute(builder: (_) => const SplashPage());
      case messangerPage:
        return MaterialPageRoute(builder: (_) => const MessengerScreen());
      case loginPage:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case signupPage:
        return MaterialPageRoute(builder: (_) => const SignUp());
      default:
        throw FormatException("Route not found");
    }
  }
}