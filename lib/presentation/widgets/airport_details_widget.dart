import 'package:air_india/core/constants/constants.dart';
import 'package:air_india/core/themes/app_colors.dart';
import 'package:air_india/models/airport_details_model.dart';
import 'package:flutter/material.dart';

class AirportDetailsWidget extends StatelessWidget {
  final String airportName;
  final String airportCode;
  final AirportDetails details;
  final VoidCallback onClose;

  const AirportDetailsWidget({
    super.key,
    required this.airportName,
    required this.airportCode,
    required this.details,
    required this.onClose,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.black.withOpacity(0.8),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.yellow, width: 1),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '$airportName ($airportCode)',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: AppColors.yellow,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              IconButton(
                icon: const Icon(Icons.close, color: AppColors.white, size: 18),
                onPressed: onClose,
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
              ),
            ],
          ),
          Constants.h16,
          _buildDetailRow(context, 'Sub Fleet', details.subFleet),
          Constants.h8,
          _buildDetailRow(context, 'Frequency', details.frequency),
          Constants.h8,
          _buildDetailRow(context, 'Fleet Count', details.fleetCount),
          Constants.h8,
          _buildDetailRow(context, 'Seats', details.seats),
        ],
      ),
    );
  }

  Widget _buildDetailRow(BuildContext context, String label, String value) {
    return Row(
      children: [
        Text(
          '$label -----',
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: AppColors.white,
              ),
        ),
        Constants.w8,
        Text(
          value,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: AppColors.yellow,
                fontWeight: FontWeight.bold,
              ),
        ),
      ],
    );
  }
}
