import 'package:air_india/presentation/home.dart';
import 'package:air_india/presentation/landing_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String landingScreen = '/';
  static const String homeScreen = '/home';

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      // Define your routes here
      case landingScreen:
        return MaterialPageRoute(builder: (_) => const LandingScreen());

      case homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());

      // Add more routes as needed
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
