import 'package:air_india/core/assets/app_images.dart';
import 'package:air_india/core/constants/constants.dart';
import 'package:air_india/core/themes/app_colors.dart';
import 'package:flutter/material.dart';

class ContentsScreen extends StatelessWidget {
  const ContentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background Map Image
          Image.asset(
            AppImages.landingBG,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Positioned(
            right: 40,
            top: 40,
            child: Image.asset(
              AppImages.logo,
              width: 292,
            ),
          ),
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 620,
                  height: 75,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.goldButton,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(70))),
                      onPressed: () => Navigator.pushNamed(context, "/network"),
                      child: const Text(
                        "EXPLORE OUR NETWORK",
                        style: TextStyle(
                            fontSize: 28,
                            color: AppColors.darkViolet,
                            fontFamily: "AirIndia"),
                      )),
                ),
                Constants.h32,
                SizedBox(
                  width: 620,
                  height: 75,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.goldButton,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(70))),
                      onPressed: () =>
                          Navigator.pushNamed(context, "/air_india_experience"),
                      child: const Text(
                        "THE NEW AIR INDIA EXPERIENCE",
                        style: TextStyle(
                            fontSize: 28,
                            color: AppColors.darkViolet,
                            fontFamily: "AirIndia"),
                      )),
                ),
                Constants.h32,
                SizedBox(
                  width: 620,
                  height: 75,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.goldButton,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(70))),
                      onPressed: () =>
                          Navigator.pushNamed(context, "/brand_showcase"),
                      child: const Text(
                        "BRAND SHOWCASE",
                        style: TextStyle(
                            fontSize: 28,
                            color: AppColors.darkViolet,
                            fontFamily: "AirIndia"),
                      )),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 40,
            right: 40,
            child: InkWell(
              onTap: () => Navigator.pop(context),
              child: Image.asset(
                AppImages.backBtn,
                width: 240,
              ),
            ),
          )
        ],
      ),
    );
  }
}
