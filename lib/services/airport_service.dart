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
        ];
      case "UK":
        return [
          Airport(
            name: "Birmingham",
            code: "BHX",
            connections: ["DEL"],
          ),
          Airport(
            name: "Heathrow",
            code: "LHR",
            connections: ["DEL", "BOM", "BLR"],
          ),
          Airport(
            name: "Gatwick",
            code: "LGW",
            connections: ["DEL", "BOM", "BLR"],
          ),
        ];
      case "North America":
        return [
          Airport(
            name: "Chicago",
            code: "ORD",
            connections: ["DEL", "BOM"],
          ),
          Airport(
            name: "Newark",
            code: "ORD",
            connections: ["DEL"],
          ),
          Airport(
            name: "New York",
            code: "JFK",
            connections: ["DEL", "BLR"],
          ),
          Airport(
            name: "San Francisco",
            code: "SFO",
            connections: ["DEL"],
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
            connections: ["DEL"],
          ),
          Airport(
            name: "Nairobi",
            code: "NBO",
            connections: ["BOM"],
          ),
        ];
      case "Middle East":
        return [
          Airport(
            name: "Abu Dhabi",
            code: "AUH",
            connections: ["DEL", "BOM", "COK"],
          ),
          Airport(
            name: "Dammam",
            code: "DMM",
            connections: ["DEL", "BOM", "HYD"],
          ),
          Airport(
            name: "Doha",
            code: "DOH",
            connections: ["DEL", "BOM"],
          ),
          Airport(
            name: "Dubai",
            code: "DXB",
            connections: ["DEL", "BOM"],
          ),
          Airport(
            name: "Jeddah",
            code: "JED",
            connections: ["DEL", "BOM"],
          ),
          Airport(
            name: "Muscat",
            code: "DOH",
            connections: ["DEL", "BOM"],
          ),
          Airport(
            name: "Riyadh",
            code: "RUH",
            connections: ["DEL", "BOM"],
          ),
          Airport(
            name: "Tel Aviv",
            code: "TLV",
            connections: ["DEL", "BOM"],
          ),
        ];
      case "South East Asia":
        return [
          Airport(
            name: "Bali",
            code: "DPS",
            connections: ["DEL", "BOM", "COK"],
          ),
          Airport(
            name: "Bangkok",
            code: "BKK",
            connections: ["DEL", "BOM", "HYD"],
          ),
          Airport(
            name: "Ho Chi Minh City",
            code: "SGN",
            connections: ["DEL", "BOM"],
          ),
          Airport(
            name: "Kuala Lumpur",
            code: "KUL",
            connections: ["DEL", "BOM"],
          ),
          Airport(
            name: "Phuket",
            code: "HKT",
            connections: ["DEL", "BOM"],
          ),
          Airport(
            name: "Singapore",
            code: "SIN",
            connections: ["DEL", "BOM"],
          ),
          Airport(
            name: "Colombo",
            code: "CMB",
            connections: ["DEL", "BOM"],
          ),
          Airport(
            name: "Dhaka",
            code: "DAC",
            connections: ["DEL", "BOM"],
          ),
          Airport(
            name: "Kathmandu",
            code: "KTM",
            connections: ["DEL", "BOM"],
          ),
          Airport(
            name: "Malé",
            code: "MLE",
            connections: ["DEL", "BOM"],
          ),
          Airport(
            name: "Yangon",
            code: "RGN",
            connections: ["DEL", "BOM"],
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
            name: "Tokyo",
            code: "NRT",
            connections: ["DEL"],
          ),
        ];
      default:
        return [];
    }
  }
}
