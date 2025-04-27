import 'package:air_india/models/cabin_class.dart';

class RouteDetails {
  final String flightNumber;
  final String frequency;
  final String seats;
  final String cabinType;
  final List<CabinClass>? cabinClasses;

  const RouteDetails({
    required this.flightNumber,
    required this.frequency,
    required this.seats,
    required this.cabinType,
    this.cabinClasses,
  });
}
