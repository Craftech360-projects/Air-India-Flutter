import 'package:air_india/core/constants/constants.dart';
import 'package:air_india/core/themes/app_colors.dart';
import 'package:air_india/models/airport_model.dart';
import 'package:air_india/presentation/widgets/route_details_widget.dart';
import 'package:air_india/services/route_details_service.dart';
import 'package:flutter/material.dart';

class AirportListWidget extends StatefulWidget {
  final List<Airport> airports;
  final VoidCallback onClose;

  const AirportListWidget({
    super.key,
    required this.airports,
    required this.onClose,
  });

  @override
  State<AirportListWidget> createState() => _AirportListWidgetState();
}

class _AirportListWidgetState extends State<AirportListWidget> {
  String? selectedAirportCode;

  @override
  void didUpdateWidget(AirportListWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    // Reset selected airport when the airport list changes
    if (oldWidget.airports != widget.airports) {
      setState(() {
        selectedAirportCode = null;
      });
    }
  }

  @override
  void dispose() {
    // Reset selected airport when widget is disposed
    selectedAirportCode = null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Constants.h8,
          ...widget.airports
              .map((airport) => _buildAirportItem(context, airport)),
        ],
      ),
    );
  }

  void _showRouteDetails(
      BuildContext context, Airport airport, String connectionCode) {
    final details =
        RouteDetailsService.getRouteDetails(airport.code, connectionCode);

    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) => RouteDetailsDialog(
        fromAirport: airport.name,
        fromAirportCode: airport.code,
        toAirport: connectionCode,
        toAirportCode: connectionCode,
        details: details,
      ),
    );
  }

  Widget _buildAirportItem(BuildContext context, Airport airport) {
    // If this is a subheading, render it differently
    if (airport.isSubheading) {
      return Padding(
        padding: const EdgeInsets.only(top: 4.0),
        child: Text(
          airport.name,
          style: _getSubheadingStyle(context, airport.subheadingStyle),
        ),
      );
    }

    final bool isSelected = selectedAirportCode == airport.code;

    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              setState(() {
                if (selectedAirportCode == airport.code) {
                  selectedAirportCode = null;
                } else {
                  selectedAirportCode = airport.code;
                }
              });
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '${airport.name} (${airport.code})',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: isSelected ? AppColors.yellow : AppColors.white,
                      ),
                ),
                if (isSelected) ...[
                  const SizedBox(width: 8),
                  Text(
                    '<------------->',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: AppColors.white,
                        fontWeight: FontWeight.w100,
                        letterSpacing: 0.1),
                  ),
                  Constants.w8,
                  Expanded(
                    child: Wrap(
                      alignment: WrapAlignment.start,
                      spacing: 4,
                      runSpacing: 4,
                      children: airport.connections.map((connection) {
                        return InkWell(
                          onTap: () =>
                              _showRouteDetails(context, airport, connection),
                          child: Container(
                            padding: const EdgeInsets.all(2.5),
                            decoration: const BoxDecoration(
                              color: AppColors.boxColor,
                            ),
                            child: Text(
                              connection,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                    color: AppColors.black,
                                  ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Helper method to get different styles for subheadings
  TextStyle _getSubheadingStyle(BuildContext context, String? style) {
    switch (style) {
      case "uk":
        return Theme.of(context).textTheme.titleMedium?.copyWith(
                color: AppColors.white,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.solid,
                decorationColor: Colors.white,
                fontSize: 14) ??
            const TextStyle(
              color: AppColors.yellow,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            );
      case "sea":
        return Theme.of(context).textTheme.titleMedium?.copyWith(
                color: AppColors.yellow,
                fontWeight: FontWeight.bold,
                fontSize: 20) ??
            const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 16,
              decoration: TextDecoration.underline,
            );
      default:
        return Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: AppColors.yellow,
                  fontWeight: FontWeight.w500,
                ) ??
            const TextStyle(
              color: AppColors.yellow,
              fontWeight: FontWeight.w500,
              fontSize: 16,
            );
    }
  }
}
