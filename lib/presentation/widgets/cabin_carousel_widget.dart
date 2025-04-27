import 'dart:async';

import 'package:air_india/core/themes/app_colors.dart';
import 'package:air_india/models/cabin_class.dart';
import 'package:flutter/material.dart';

class CabinCarouselWidget extends StatefulWidget {
  final List<CabinClass> cabinClasses;

  const CabinCarouselWidget({
    super.key,
    required this.cabinClasses,
  });

  @override
  State<CabinCarouselWidget> createState() => _CabinCarouselWidgetState();
}

class _CabinCarouselWidgetState extends State<CabinCarouselWidget> {
  int _selectedClassIndex = 0;
  int _currentImageIndex = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startImageTimer();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _startImageTimer() {
    _timer?.cancel();
    // Increased timer duration from 2 seconds to 4 seconds
    _timer = Timer.periodic(const Duration(seconds: 4), (timer) {
      if (widget.cabinClasses.isNotEmpty &&
          widget.cabinClasses[_selectedClassIndex].imagePaths.isNotEmpty) {
        final imageCount =
            widget.cabinClasses[_selectedClassIndex].imagePaths.length;
        if (imageCount > 1) {
          setState(() {
            _currentImageIndex = (_currentImageIndex + 1) % imageCount;
          });
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Carousel
        Container(
          width: 650,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: AppColors.white, width: 2),
          ),
          child: widget.cabinClasses.isNotEmpty
              ? AnimatedSwitcher(
                  // Increased duration from 1000ms to 2000ms for slower fade
                  duration: const Duration(milliseconds: 3000),
                  // Using a slower curve for even smoother transition
                  switchInCurve: Curves.easeInOutSine,
                  switchOutCurve: Curves.easeInOutSine,
                  transitionBuilder:
                      (Widget child, Animation<double> animation) {
                    return FadeTransition(
                      opacity: CurvedAnimation(
                        parent: animation,
                        // Using easeInOutSine curve for smoother fade
                        curve: Curves.easeInOutSine,
                      ),
                      child: child,
                    );
                  },
                  child: Image.asset(
                    widget.cabinClasses[_selectedClassIndex]
                        .imagePaths[_currentImageIndex],
                    key: ValueKey<int>(_currentImageIndex),
                    fit: BoxFit.cover,
                  ),
                )
              : const Center(
                  child: Text(
                    'No images available',
                    style: TextStyle(color: AppColors.white),
                  ),
                ),
        ),
        const SizedBox(height: 12),
        // Cabin Class Buttons
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: widget.cabinClasses.asMap().entries.map((entry) {
            final index = entry.key;
            final cabinClass = entry.value;
            final isSelected = index == _selectedClassIndex;

            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    _selectedClassIndex = index;
                    _currentImageIndex = 0;
                    // Remove PageController jump since we're using AnimatedSwitcher
                    _startImageTimer();
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      isSelected ? AppColors.yellow : const Color(0xFFE9C46A),
                  foregroundColor: isSelected ? Colors.black : Colors.black87,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text(cabinClass.name),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
