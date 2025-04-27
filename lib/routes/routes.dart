import 'package:air_india/presentation/air_india_experience.dart';
import 'package:air_india/presentation/brand_showcase.dart';
import 'package:air_india/presentation/contents.dart';
import 'package:air_india/presentation/home.dart';
import 'package:air_india/presentation/landing_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String landingScreen = '/';
  static const String networkScreen = '/network';
  static const String contentsScreen = '/contents';
  static const String airIndiaExperienceScreen = '/air_india_experience';
  static const String brandShowcase = '/brand_showcase';

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      // Define your routes here
      case landingScreen:
        return MaterialPageRoute(builder: (_) => const LandingScreen());

      case networkScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());

      case contentsScreen:
        return MaterialPageRoute(builder: (_) => const ContentsScreen());

      case airIndiaExperienceScreen:
        return MaterialPageRoute(builder: (_) => const AirIndiaExperience());

      case brandShowcase:
        return MaterialPageRoute(builder: (_) => const BrandShowcase());

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
