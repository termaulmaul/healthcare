import 'package:flutter/material.dart';

import '../ui/home_screen.dart';
import '../ui/login.dart';
import '../ui/register.dart';
import '../ui/searchpage.dart';
import '../ui/article_page.dart'; // Import article_page.dart
import '../ui/profile_page.dart'; // Import profile_page.dart
import '../ui/check_page.dart'; // Import check_page.dart

MaterialPageRoute _pageRoute({
  required Widget body,
  required RouteSettings settings,
}) =>
    MaterialPageRoute(builder: (_) => body, settings: settings);

Route? generateRoute(RouteSettings settings) {
  Route? route;
  switch (settings.name) {
    case rLogin:
      route = _pageRoute(body: LoginScreen(), settings: settings);
      break;
    case rRegister:
      route = _pageRoute(body: RegisterScreen(), settings: settings);
      break;
    case rHome:
      route = _pageRoute(body: HomeScreen(), settings: settings);
      break;
    case rSearch:
      route = _pageRoute(body: SearchPage(), settings: settings);
      break;
    case rArticle:
      route = _pageRoute(body: ArticlePage(), settings: settings);
      break;
    case rProfile:
      route = _pageRoute(body: ProfilePage(), settings: settings);
      break;
    case rCheck: // Menambahkan kasus untuk rCheck
      route = _pageRoute(body: CheckPage(), settings: settings);
      break;
    default:
      route = _pageRoute(body: HomeScreen(), settings: settings); // Default route
  }
  return route;
}

final NAV_KEY = GlobalKey<NavigatorState>();
const String rLogin = '/login';
const String rRegister = '/register';
const String rHome = '/home';
const String rSearch = '/search';
const String rArticle = '/article';
const String rProfile = '/profile';
const String rCheck = '/check'; // Menambahkan konstanta rCheck
