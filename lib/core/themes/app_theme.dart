import 'package:air_india/core/constants/constants.dart';
import 'package:air_india/core/themes/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    // Base Theme Configuration
    useMaterial3: true,
    brightness: Brightness.light,
    fontFamily: "Nunito",
    primaryColor: AppColors.purpleDark,
    scaffoldBackgroundColor: AppColors.lwhite,

    // Color Scheme
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.purpleDark,
      secondary: AppColors.yellow,
      brightness: Brightness.light,
    ),

    // App Bar Theme
    appBarTheme: const AppBarTheme(backgroundColor: AppColors.lwhite),

    // Icon Themes
    iconTheme: const IconThemeData(color: AppColors.black),
    iconButtonTheme: const IconButtonThemeData(
      style: ButtonStyle(
        iconColor: WidgetStatePropertyAll(AppColors.black),
      ),
    ),

    // Button Themes
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        iconColor: const WidgetStatePropertyAll(AppColors.black),
        textStyle: WidgetStateProperty.all(
          const TextStyle(color: AppColors.black, fontFamily: "Nunito"),
        ),
        foregroundColor: WidgetStateProperty.all(AppColors.black),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        iconColor: AppColors.white,
        elevation: 0,
        foregroundColor: AppColors.white,
        backgroundColor: AppColors.purpleDark,
        shadowColor: Colors.transparent,
        textStyle: const TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 15,
          fontFamily: "Nunito",
          color: AppColors.white,
        ),
        shape: RoundedRectangleBorder(borderRadius: Constants.br12),
      ),
    ),

    // Notification Theme
    snackBarTheme: const SnackBarThemeData(closeIconColor: AppColors.white),

    // Form Theme
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: Constants.br8,
      ),
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 16,
      ),
    ),

    // Text Theme
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        color: AppColors.black,
        fontSize: 26,
        fontWeight: FontWeight.w600,
      ),
      headlineMedium: TextStyle(
        color: AppColors.black,
        fontSize: 24,
        fontWeight: FontWeight.w600,
      ),
      headlineSmall: TextStyle(
        color: AppColors.black,
        fontSize: 22,
        fontWeight: FontWeight.w600,
      ),
      titleLarge: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w700,
        color: AppColors.yellow,
      ),
      titleMedium: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: AppColors.black,
      ),
      titleSmall: TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.w500,
        color: AppColors.black,
      ),
      bodyLarge: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 16,
        color: AppColors.black,
      ),
      bodyMedium: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 13.5,
        color: AppColors.white,
      ),
      bodySmall: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 13,
        color: AppColors.black,
      ),
    ),
  );

  static final darkTheme = ThemeData(
    // Base Theme Configuration
    useMaterial3: true,
    brightness: Brightness.dark,
    fontFamily: "Nunito",
    primaryColor: AppColors.purpleDark,
    scaffoldBackgroundColor: AppColors.darkBg,

    // Color Scheme
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.purpleDark,
      secondary: AppColors.yellow,
      brightness: Brightness.dark,
    ),

    // App Bar Theme
    appBarTheme: const AppBarTheme(backgroundColor: AppColors.indigo),

    // Icon Themes
    iconTheme: const IconThemeData(color: AppColors.white),
    iconButtonTheme: const IconButtonThemeData(
      style: ButtonStyle(
        iconColor: WidgetStatePropertyAll(AppColors.commonPink),
      ),
    ),

    // Button Themes
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        iconColor: const WidgetStatePropertyAll(AppColors.white),
        textStyle: WidgetStateProperty.all(
          const TextStyle(
            color: AppColors.white,
            fontFamily: "Nunito",
            fontWeight: FontWeight.w600,
          ),
        ),
        foregroundColor: WidgetStateProperty.all(AppColors.white),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        iconColor: AppColors.white,
        elevation: 0,
        foregroundColor: AppColors.black,
        backgroundColor: AppColors.white,
        shadowColor: Colors.transparent,
        textStyle: const TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 15,
          color: AppColors.black,
        ),
        shape: RoundedRectangleBorder(borderRadius: Constants.br12),
      ),
    ),

    // Notification Theme
    snackBarTheme: const SnackBarThemeData(closeIconColor: AppColors.darkBg),

    // Form Theme
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: const TextStyle(
        color: AppColors.black,
      ),
      border: OutlineInputBorder(
        borderRadius: Constants.br8,
      ),
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 16,
      ),
    ),

    // Text Theme
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        color: AppColors.white,
        fontSize: 26,
        fontWeight: FontWeight.w600,
      ),
      headlineMedium: TextStyle(
        color: AppColors.white,
        fontSize: 24,
        fontWeight: FontWeight.w600,
      ),
      headlineSmall: TextStyle(
        color: AppColors.white,
        fontSize: 22,
        fontWeight: FontWeight.w600,
      ),
      //

      titleLarge: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w700,
        color: AppColors.yellow,
      ),

      //
      titleMedium: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: AppColors.white,
      ),
      titleSmall: TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.w500,
        color: AppColors.white,
      ),
      bodyLarge: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 16,
        color: AppColors.white,
      ),
      bodyMedium: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 14.5,
        color: AppColors.white,
      ),
      bodySmall: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 13,
        color: AppColors.white,
      ),
    ),
  );
}
