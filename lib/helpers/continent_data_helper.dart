import 'package:air_india/models/continent_data.dart';
import 'package:air_india/models/position_model.dart';
import 'package:flutter/material.dart';

class ContinentDataHelper {
  static List<ContinentData> getContinents(BuildContext context) {
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
}
