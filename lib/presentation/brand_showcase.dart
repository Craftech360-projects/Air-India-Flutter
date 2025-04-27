import 'package:air_india/core/assets/app_images.dart';
import 'package:air_india/core/constants/constants.dart';
import 'package:air_india/core/themes/app_colors.dart';
import 'package:air_india/presentation/video_player_screen.dart';
import 'package:air_india/services/video_service.dart';
import 'package:flutter/material.dart';

class BrandShowcase extends StatelessWidget {
  const BrandShowcase({super.key});

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
                const Text(
                  textAlign: TextAlign.center,
                  "BRAND SHOWCASE",
                  style: TextStyle(
                      fontSize: 62, fontFamily: "AirIndia", height: 1.1),
                ),
                Constants.h32,
                Constants.h16,
                SizedBox(
                  width: 620,
                  height: 88,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.goldButton,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(70))),
                      onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => VideoPlayerScreen(
                                videoPath:
                                    VideoService.getCelebratingIndiaVideo(),
                                title: "AIR INDIA CELEBRATING INDIA",
                              ),
                            ),
                          ),
                      child: const Text(
                        "AIR INDIA CELEBRATING INDIA",
                        style: TextStyle(
                            fontSize: 28,
                            color: AppColors.darkViolet,
                            fontFamily: "AirIndia"),
                      )),
                ),
                Constants.h32,
                SizedBox(
                  width: 620,
                  height: 88,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.goldButton,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(70))),
                      onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => VideoPlayerScreen(
                                videoPath:
                                    VideoService.getTalismanMasterVideo(),
                                title: "TALISMAN MASTER",
                              ),
                            ),
                          ),
                      child: const Text(
                        "TALISMAN MASTER",
                        style: TextStyle(
                            fontSize: 28,
                            color: AppColors.darkViolet,
                            fontFamily: "AirIndia"),
                      )),
                ),
                Constants.h32,
                SizedBox(
                  width: 620,
                  height: 88,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.goldButton,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(70))),
                      onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => VideoPlayerScreen(
                                videoPath: VideoService.getBrandTrackVideo(),
                                title:
                                    "WATCH AIR INDIA'S BRAND TRACK COME ALIVE",
                              ),
                            ),
                          ),
                      child: const Text(
                        textAlign: TextAlign.center,
                        "WATCH AIR INDIA'S BRAND\nTRACK COME ALIVE",
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
