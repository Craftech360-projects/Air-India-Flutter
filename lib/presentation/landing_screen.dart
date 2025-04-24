import 'package:air_india/core/assets/app_images.dart';
import 'package:flutter/material.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
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
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Text(
                    "EXPLORE WHERE\nAIR INDIA TAKES THE WORLD",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontFamily: 'AirIndia',
                      fontSize: 48,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      height: 1.2,
                    ),
                  ),
                ),
                const SizedBox(height: 250),
                InkWell(
                  onTap: () => Navigator.pushNamed(context, '/home'),
                  child: Center(
                    child: SizedBox(
                      height: 56,
                      width: 450,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset(
                            AppImages.gradientBtn,
                            fit: BoxFit.fill,
                          ),
                          const Center(
                            child: Text(
                              'BEGIN YOUR JOURNEY',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                decoration: TextDecoration.none,
                                fontFamily: 'AirIndia',
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
