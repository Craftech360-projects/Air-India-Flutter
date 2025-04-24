import 'package:air_india/core/themes/app_theme.dart';
import 'package:air_india/routes/routes.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      title: 'Air India',
      onGenerateRoute: AppRoutes.onGenerateRoute,
      initialRoute: AppRoutes.landingScreen,
    );
  }
}
