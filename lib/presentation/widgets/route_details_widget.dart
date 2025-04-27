import 'package:air_india/core/constants/constants.dart';
import 'package:air_india/core/themes/app_colors.dart';
import 'package:air_india/models/route_details.dart';
import 'package:air_india/presentation/widgets/cabin_carousel_widget.dart';
import 'package:flutter/material.dart';

class RouteDetailsDialog extends StatelessWidget {
  final String fromAirport;
  final String fromAirportCode;
  final String toAirport;
  final String toAirportCode;
  final RouteDetails details;
  final double? width;

  const RouteDetailsDialog({
    super.key,
    required this.fromAirport,
    required this.fromAirportCode,
    required this.toAirport,
    required this.toAirportCode,
    required this.details,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    final bool hasCabinClasses = details.cabinType == "3 Cabin" &&
        details.cabinClasses != null &&
        details.cabinClasses!.isNotEmpty;

    return Dialog(
      backgroundColor: Colors.transparent,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.topCenter,
        children: [
          // Main Dialog Container
          Container(
            height: hasCabinClasses ? 500 : 200,
            width: width ?? 800,
            padding: hasCabinClasses
                ? const EdgeInsets.only(bottom: 80, left: 28, right: 28)
                : const EdgeInsets.all(40),
            margin: hasCabinClasses
                ? const EdgeInsets.only(top: 100)
                : EdgeInsets.zero,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [AppColors.gradient1, AppColors.gradient2],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(2),
              border: Border.all(color: AppColors.white, width: 2),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "$fromAirport ($fromAirportCode)",
                          style:
                              Theme.of(context).textTheme.titleMedium?.copyWith(
                                    color: AppColors.yellow,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                        Text(
                          ' <-----> ',
                          style:
                              Theme.of(context).textTheme.titleMedium?.copyWith(
                                    color: AppColors.white,
                                    fontWeight: FontWeight.w100,
                                  ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 2),
                          color: AppColors.boxColor,
                          child: Text(
                            toAirportCode,
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                  color: AppColors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ),
                      ],
                    ),
                    Constants.w16,
                    // Removed close button from here
                  ],
                ),

                // Flight details
                Constants.h16,
                _buildDetailRow(context, 'Flight Number', details.flightNumber),
                Constants.h8,
                _buildDetailRow(context, 'Frequency', details.frequency),
                Constants.h8,
                _buildDetailRow(context, 'Seats', details.seats),
              ],
            ),
          ),

          // Stacked Carousel on top
          if (hasCabinClasses)
            Positioned(
              top: -100,
              child: SizedBox(
                width: (width ?? 1030) - 24,
                child: CabinCarouselWidget(cabinClasses: details.cabinClasses!),
              ),
            ),

          // Close button positioned at the top right corner
          Positioned(
            top: hasCabinClasses ? 85 : -15,
            right: -10,
            child: CircleAvatar(
              radius: 16,
              backgroundColor: AppColors.white,
              child: IconButton(
                icon: const Icon(Icons.close,
                    color: AppColors.gradient1, size: 18),
                onPressed: () => Navigator.of(context).pop(),
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDetailRow(BuildContext context, String label, String value) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // Calculate available width for dots
        final labelStyle = Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: AppColors.white,
            );
        final valueStyle = Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: AppColors.white,
              fontWeight: FontWeight.bold,
            );

        // Create text painters to measure text widths
        final labelPainter = TextPainter(
          text: TextSpan(text: label, style: labelStyle),
          textDirection: TextDirection.ltr,
        )..layout();

        final valuePainter = TextPainter(
          text: TextSpan(text: value, style: valueStyle),
          textDirection: TextDirection.ltr,
        )..layout();

        // Calculate space available for dots
        final totalWidth = constraints.maxWidth;
        final spaceForDots = totalWidth -
            labelPainter.width -
            valuePainter.width -
            1; // 16 for padding

        // Calculate number of dots needed (each dot is approximately 6 pixels wide)
        const dotWidth = 6.0;
        final numberOfDots = (spaceForDots / dotWidth).floor();

        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              label,
              style: labelStyle,
            ),
            Constants.w8,
            Text(
              '.' * numberOfDots,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: AppColors.white,
                    letterSpacing: 2,
                  ),
            ),
            Constants.w8,
            Text(
              value,
              style: valueStyle,
            ),
          ],
        );
      },
    );
  }
}
