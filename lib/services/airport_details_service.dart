import 'package:air_india/models/airport_details_model.dart';

class AirportDetailsService {
  static AirportDetails getAirportDetails(String airportCode) {
    // In a real app, this would come from an API or database
    // For now, we'll use mock data
    switch (airportCode) {
      case "AMS": // Amsterdam
        return AirportDetails(
          subFleet: "AI 788",
          frequency: "07",
          fleetCount: "27",
          seats: "259",
        );
      case "LHR": // London Heathrow
        return AirportDetails(
          subFleet: "AI 789",
          frequency: "14",
          fleetCount: "32",
          seats: "280",
        );
      case "JFK": // New York
        return AirportDetails(
          subFleet: "AI 777",
          frequency: "10",
          fleetCount: "18",
          seats: "342",
        );
      case "DXB": // Dubai
        return AirportDetails(
          subFleet: "AI 787",
          frequency: "21",
          fleetCount: "24",
          seats: "256",
        );
      case "SIN": // Singapore
        return AirportDetails(
          subFleet: "AI 788",
          frequency: "07",
          fleetCount: "15",
          seats: "259",
        );
      default:
        // Default values for airports without specific data
        return AirportDetails(
          subFleet: "AI 788",
          frequency: "05",
          fleetCount: "12",
          seats: "256",
        );
    }
  }
}
