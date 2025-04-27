import 'package:air_india/models/continent_data.dart';
import 'package:air_india/models/position_model.dart';
import 'package:air_india/presentation/widgets/airport_list_widget.dart';
import 'package:air_india/services/airport_service.dart';
import 'package:flutter/material.dart';

class ContinentAirportList extends StatelessWidget {
  final String continentName;
  final Animation<double> fadeAnimation;
  final VoidCallback onClose;

  const ContinentAirportList({
    super.key,
    required this.continentName,
    required this.fadeAnimation,
    required this.onClose,
  });

  @override
  Widget build(BuildContext context) {
    final position =
        _getPositionForContinentAirportList(context, continentName);

    return Positioned(
      top: position.top,
      bottom: position.bottom,
      left: position.left,
      right: position.right,
      child: FadeTransition(
        opacity: fadeAnimation,
        child: AirportListWidget(
          airports: AirportService.getAirportsForContinent(continentName),
          onClose: onClose,
        ),
      ),
    );
  }

  Position _getPositionForContinentAirportList(
      BuildContext context, String continentName) {
    // Find the continent data to position the list near it
    final continents = _getContinentData(context);
    final continent = continents.firstWhere(
      (c) => c.name == continentName,
      orElse: () => continents.first,
    );

    // Position the list based on the continent
    switch (continentName) {
      case "Europe":
        return Position(
          top: MediaQuery.of(context).size.height * 0.046 + 25, // 10px down
          left: MediaQuery.of(context).size.width * 0.298,
        );
      case "UK":
        return Position(
          top: MediaQuery.of(context).size.height * 0.353 + 30, // 10px down
          left: MediaQuery.of(context).size.width * 0.106,
        );
      case "North America":
        return Position(
          bottom:
              MediaQuery.of(context).size.height * 0.407 - 200, // 100px down
          left: MediaQuery.of(context).size.width * 0.095,
        );
      case "Middle East":
        return Position(
          bottom:
              MediaQuery.of(context).size.height * 0.284 - 175, // 100px down
          left: MediaQuery.of(context).size.width * 0.308,
        );
      case "Africa":
        return Position(
          bottom: MediaQuery.of(context).size.height * 0.1 - 65, // 50px down
          right: MediaQuery.of(context).size.width * 0.255,
        );
      case "Australia":
        return Position(
          bottom: MediaQuery.of(context).size.height * 0.105 - 65, // 50px down
          right: MediaQuery.of(context).size.width * 0.096,
        );
      case "South East Asia":
        return Position(
          bottom:
              MediaQuery.of(context).size.height * 0.476 - 342, // 100px down
          right: MediaQuery.of(context).size.width * 0.0655,
        );
      case "Far East":
        return Position(
          top: MediaQuery.of(context).size.height * 0.223 + 25, // 100px down
          right: MediaQuery.of(context).size.width * 0.0,
        );
      default:
        // Default position if continent is not recognized
        return Position(
          top: continent.position.top ??
              MediaQuery.of(context).size.height * 0.4,
          left: continent.position.left ??
              MediaQuery.of(context).size.width * 0.5,
        );
    }
  }
}

// Get continent data for positioning
List<ContinentData> _getContinentData(BuildContext context) {
  return [
    ContinentData(
      name: "Europe",
      position: Position(
        top: MediaQuery.of(context).size.height * 0.046,
        left: MediaQuery.of(context).size.width * 0.297,
      ),
    ),
    ContinentData(
      name: "UK",
      position: Position(
        top: MediaQuery.of(context).size.height * 0.353,
        left: MediaQuery.of(context).size.width * 0.106,
      ),
    ),
    ContinentData(
      name: "North America",
      position: Position(
        bottom: MediaQuery.of(context).size.height * 0.407,
        left: MediaQuery.of(context).size.width * 0.095,
      ),
    ),
    ContinentData(
      name: "Middle East",
      position: Position(
        bottom: MediaQuery.of(context).size.height * 0.284,
        left: MediaQuery.of(context).size.width * 0.308,
      ),
    ),
    ContinentData(
      name: "Africa",
      position: Position(
        bottom: MediaQuery.of(context).size.height * 0.1,
        right: MediaQuery.of(context).size.width * 0.434,
      ),
    ),
    ContinentData(
      name: "Australia",
      position: Position(
        bottom: MediaQuery.of(context).size.height * 0.105,
        right: MediaQuery.of(context).size.width * 0.26,
      ),
    ),
    ContinentData(
      name: "South East Asia",
      position: Position(
        bottom: MediaQuery.of(context).size.height * 0.476,
        right: MediaQuery.of(context).size.width * 0.198,
      ),
    ),
    ContinentData(
      name: "Far East",
      position: Position(
        top: MediaQuery.of(context).size.height * 0.223,
        right: MediaQuery.of(context).size.width * 0.17,
      ),
    ),
  ];
}
