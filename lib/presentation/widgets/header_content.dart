import 'package:air_india/core/assets/app_images.dart';
import 'package:air_india/core/constants/constants.dart';
import 'package:air_india/core/themes/app_colors.dart';
import 'package:flutter/material.dart';

class HeaderContent extends StatelessWidget {
  const HeaderContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 25,
      left: 100,
      child: Column(
        children: [
          Image.asset(
            AppImages.logo,
            width: 180,
            fit: BoxFit.fitWidth,
          ),
          Constants.h8,
          Text(
            textAlign: TextAlign.center,
            "INTERNATIONAL\nCONNECTIVITY",
            style: TextStyle(
                height: 1.1,
                fontSize: 25,
                fontFamily: "AirIndia",
                color: AppColors.white.withValues(alpha: 0.8),
                letterSpacing: 1.2,
                fontWeight: FontWeight.w100),
          ),
          const Text(
            "......................................................",
            style: TextStyle(height: 0.5, color: AppColors.white),
          ),
          Constants.h8,
          const Text(
            textAlign: TextAlign.center,
            "Air India flies non-stop to\n42 destinations across\nfive continents from multiple\nIndian cities (pinned on the\nmap of India)",
            style: TextStyle(
                fontSize: 14,
                fontFamily: "Nunito",
                color: AppColors.yellow2,
                height: 1.2),
          ),
          const Text(
            "......................................................",
            style: TextStyle(height: 0.5, color: AppColors.white),
          ),
        ],
      ),
    );
  }
}
