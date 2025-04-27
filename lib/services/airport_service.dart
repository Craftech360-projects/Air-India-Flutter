import 'package:air_india/models/airport_model.dart';

class AirportService {
  static List<Airport> getAirportsForContinent(String continentName) {
    switch (continentName) {
      case "Europe":
        return [
          Airport(
            name: "Amsterdam",
            code: "AMS",
            connections: ["DEL"],
          ),
          Airport(
            name: "Copenhagen",
            code: "CPH",
            connections: ["DEL"],
          ),
          Airport(
            name: "Frankfurt",
            code: "FRA",
            connections: ["DEL", "BOM"],
          ),
          Airport(
            name: "Milan",
            code: "MXP",
            connections: ["DEL"],
          ),
          Airport(
            name: "Paris",
            code: "CDG",
            connections: ["DEL"],
          ),
          Airport(
            name: "Vienna",
            code: "VIE",
            connections: ["DEL"],
          ),
          Airport(
            name: "Zurich",
            code: "ZRH",
            connections: ["DEL"],
          ),
          Airport(
            name: "Tel Aviv",
            code: "TLV",
            connections: ["DEL"],
          ),
        ];
      case "UK":
        return [
          Airport(
            name: "Birmingham",
            code: "BHX",
            connections: ["DEL", "ATQ"],
          ),
          Airport(
            name: "London",
            code: "",
            connections: [],
            isSubheading: true,
            subheadingStyle: "uk",
          ),
          Airport(
            name: "Heathrow",
            code: "LHR",
            connections: ["DEL", "BOM", "BLR"],
          ),
          Airport(
            name: "Gatwick",
            code: "LGW",
            connections: ["ATQ", "AMD", "GOX"],
          ),
        ];
      case "North America":
        return [
          Airport(
            name: "Chicago",
            code: "ORD",
            connections: ["DEL"],
          ),
          Airport(
            name: "Newark",
            code: "EWR",
            connections: ["DEL", "BOM"],
          ),
          Airport(
            name: "New York",
            code: "JFK",
            connections: ["DEL", "BOM"],
          ),
          Airport(
            name: "San Francisco",
            code: "SFO",
            connections: ["DEL", "BOM", "BLR"],
          ),
          Airport(
            name: "Toronto",
            code: "YYZ",
            connections: ["DEL"],
          ),
          Airport(
            name: "Vancouver",
            code: "YVR",
            connections: ["DEL"],
          ),
          Airport(
            name: "Washington",
            code: "IAD",
            connections: ["DEL"],
          ),
        ];
      case "Australia":
        return [
          Airport(
            name: "Melbourne",
            code: "MEL",
            connections: ["DEL"],
          ),
          Airport(
            name: "Sydney",
            code: "SYD",
            connections: ["DEL"],
          ),
        ];
      case "Africa":
        return [
          Airport(
            name: "Mauritius",
            code: "MRU",
            connections: ["BOM"],
          ),
          Airport(
            name: "Nairobi",
            code: "NBO",
            connections: ["DEL"],
          ),
        ];
      case "Middle East":
        return [
          Airport(
            name: "Abu Dhabi",
            code: "AUH",
            connections: ["BOM"],
          ),
          Airport(
            name: "Dammam",
            code: "DMM",
            connections: ["BOM"],
          ),
          Airport(
            name: "Doha",
            code: "DOH",
            connections: ["DEL", "BOM", "COK"],
          ),
          Airport(
            name: "Dubai",
            code: "DXB",
            connections: ["DEL", "BOM", "COK", "HYD", "MAA"],
          ),
          Airport(
            name: "Jeddah",
            code: "JED",
            connections: ["DEL", "BOM"],
          ),
          Airport(
            name: "Riyadh",
            code: "RUH",
            connections: ["DEL", "BOM"],
          ),
        ];
      case "South East Asia":
        return [
          Airport(
            name: "Bali",
            code: "DPS",
            connections: ["DEL"],
          ),
          Airport(
            name: "Bangkok",
            code: "BKK",
            connections: ["DEL", "BOM"],
          ),
          Airport(
            name: "Ho Chi Minh City",
            code: "SGN",
            connections: ["DEL"],
          ),
          Airport(
            name: "Kuala Lumpur",
            code: "KUL",
            connections: ["DEL"],
          ),
          Airport(
            name: "Phuket",
            code: "HKT",
            connections: ["DEL"],
          ),
          Airport(
            name: "Singapore",
            code: "SIN",
            connections: ["DEL", "BOM", "BLR", "MAA", "PNQ"],
          ),
          Airport(
            name: "Indian Subcontinent",
            code: "",
            connections: [],
            isSubheading: true,
            subheadingStyle: "sea",
          ),
          Airport(
            name: "Colombo",
            code: "CMB",
            connections: ["DEL", "BOM", "MAA"],
          ),
          Airport(
            name: "Dhaka",
            code: "DAC",
            connections: ["DEL", "BOM"],
          ),
          Airport(
            name: "Kathmandu",
            code: "KTM",
            connections: ["DEL"],
          ),
          Airport(
            name: "Malé",
            code: "MLE",
            connections: ["DEL", "BOM"],
          ),
          Airport(
            name: "Yangon",
            code: "RGN",
            connections: ["DEL"],
          ),
        ];
      case "Far East":
        return [
          Airport(
            name: "Hong Kong",
            code: "HKG",
            connections: ["DEL"],
          ),
          Airport(
            name: "Seoul",
            code: "ICN",
            connections: ["DEL"],
          ),
          Airport(
            name: "Haneda",
            code: "HND",
            connections: ["DEL"],
          ),
        ];
      default:
        return [];
    }
  }
}
