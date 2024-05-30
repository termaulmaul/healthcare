import 'package:flutter/material.dart';

import '../ui/home_screen.dart';
import '../ui/login.dart';
import '../ui/register.dart';

MaterialPageRoute _pageRoute(
        {required Widget body, required RouteSettings settings}) =>
    MaterialPageRoute(builder: (_) => body, settings: settings);
Route? generateRoute(RouteSettings settings) {
  Route? route;
  switch (settings.name) {
    case rLogin:
      route = _pageRoute(body: const LoginScreen(), settings: settings);
      break;
    case rRegister:
      route = _pageRoute(body: const RegisterScreen(), settings: settings);
      break;
    case rHome:
      route = _pageRoute(body: const HomeScreen(), settings: settings);
      break;
  }
  return route;
}

final NAV_KEY = GlobalKey<NavigatorState>();
const String rLogin = '/login';
const String rRegister = '/register';
const String rHome = '/home';
