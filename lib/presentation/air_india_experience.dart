import 'package:air_india/core/assets/app_images.dart';
import 'package:air_india/core/constants/constants.dart';
import 'package:air_india/core/themes/app_colors.dart';
import 'package:air_india/presentation/video_player_screen.dart';
import 'package:air_india/services/video_service.dart';
import 'package:flutter/material.dart';

class AirIndiaExperience extends StatelessWidget {
  const AirIndiaExperience({super.key});

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
                  "THE NEW AIR INDIA\nEXPERIENCE",
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
                                videoPath: VideoService.getA320Video(
                                    0), // index parameter will be ignored
                                title: "A320",
                              ),
                            ),
                          ),
                      child: const Text(
                        "A320",
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
                                videoPath: VideoService.getA350Video(),
                                title: "A350",
                              ),
                            ),
                          ),
                      child: const Text(
                        "A350",
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
                                videoPath: VideoService.getB787Video(),
                                title: "B787-9",
                              ),
                            ),
                          ),
                      child: const Text(
                        "B787-9",
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
