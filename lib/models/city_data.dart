import 'package:air_india/models/position_model.dart';
import 'package:air_india/presentation/widgets/city_layout.dart';

class CityData {
  final String name;
  final String code;
  final Position position;
  final CityLayout layout;

  const CityData({
    required this.name,
    required this.code,
    required this.position,
    required this.layout,
  });
}
