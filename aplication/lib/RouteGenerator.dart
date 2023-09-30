import 'package:aplication/Pages/RegisterForm_page.dart';
import 'package:aplication/Pages/MyHomeApp_page.dart';
import 'package:aplication/Pages/UserProfile_page.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const MyHomeApp_page());
      case '/register':
        return MaterialPageRoute(builder: (_) => RegisterForm_page());
      case '/profile':
        return MaterialPageRoute(builder: (_) => UserProfile_page());
      default:
        return MaterialPageRoute(builder: (_) => const MyHomeApp_page());
    }
  }
}
