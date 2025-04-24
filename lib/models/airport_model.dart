class Airport {
  final String name;
  final String code;
  final List<String> connections;

  Airport({
    required this.name,
    required this.code,
    required this.connections,
  });
}

class ContinentAirports {
  final String continentName;
  final List<Airport> airports;

  ContinentAirports({
    required this.continentName,
    required this.airports,
  });
}
