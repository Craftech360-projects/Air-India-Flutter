class Airport {
  final String name;
  final String code;
  final List<String> connections;
  final bool isSubheading;
  final String? subheadingStyle; // Can be used to apply different styles

  Airport({
    required this.name,
    required this.code,
    required this.connections,
    this.isSubheading = false,
    this.subheadingStyle,
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
