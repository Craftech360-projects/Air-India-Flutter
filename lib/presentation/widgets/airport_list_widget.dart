import 'package:air_india/core/constants/constants.dart';
import 'package:air_india/core/themes/app_colors.dart';
import 'package:air_india/models/airport_model.dart';
import 'package:air_india/presentation/widgets/airport_details_widget.dart';
import 'package:air_india/services/airport_details_service.dart';
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
  Widget build(BuildContext context) {
    return Container(
      width: 320,
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
          if (selectedAirportCode != null) _buildAirportDetails(),
        ],
      ),
    );
  }

  Widget _buildAirportItem(BuildContext context, Airport airport) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              setState(() {
                // Toggle selection
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
                        color: selectedAirportCode == airport.code
                            ? AppColors.yellow
                            : AppColors.white,
                      ),
                ),
                const SizedBox(width: 8),
                Text(
                  '<------------->',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: AppColors.white,
                      fontWeight: FontWeight.w100,
                      letterSpacing: 0.1),
                ),
                Constants.w8,
                Wrap(
                  spacing: 4,
                  runSpacing: 4,
                  children: airport.connections.map((connection) {
                    return Container(
                      padding: const EdgeInsets.all(2.5),
                      decoration:
                          const BoxDecoration(color: AppColors.boxColor),
                      child: Text(
                        connection,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: AppColors.black,
                            ),
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAirportDetails() {
    // Find the selected airport
    final selectedAirport = widget.airports.firstWhere(
      (airport) => airport.code == selectedAirportCode,
      orElse: () => widget.airports.first,
    );

    // Get details for the selected airport
    final details =
        AirportDetailsService.getAirportDetails(selectedAirportCode!);

    return Padding(
      padding: const EdgeInsets.only(top: 16.0, bottom: 8.0),
      child: AirportDetailsWidget(
        airportName: selectedAirport.name,
        airportCode: selectedAirport.code,
        details: details,
        onClose: () {
          setState(() {
            selectedAirportCode = null;
          });
        },
      ),
    );
  }
}
