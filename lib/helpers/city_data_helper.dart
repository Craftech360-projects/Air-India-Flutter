import 'package:air_india/models/city_data.dart';
import 'package:air_india/models/position_model.dart';
import 'package:air_india/presentation/widgets/city_layout.dart';
import 'package:flutter/material.dart';

class CityDataHelper {
  static List<CityData> getIndianCities(BuildContext context) {
    return [
      CityData(
        name: "Kochi",
        code: "COK",
        position: Position(
          top: MediaQuery.of(context).size.height * 0.44,
          right: MediaQuery.of(context).size.width * 0.410,
        ),
        layout: CityLayout.codeFirst,
      ),
      CityData(
        name: "Chennai",
        code: "MAA",
        position: Position(
          top: MediaQuery.of(context).size.height * 0.415,
          right: MediaQuery.of(context).size.width * 0.375,
        ),
        layout: CityLayout.codeFirst,
      ),
      CityData(
        name: "Bengaluru",
        code: "BLR",
        position: Position(
          top: MediaQuery.of(context).size.height * 0.40,
          right: MediaQuery.of(context).size.width * 0.425,
        ),
        layout: CityLayout.nameFirst,
      ),
      CityData(
        name: "Goa",
        code: "GOX",
        position: Position(
          top: MediaQuery.of(context).size.height * 0.373,
          right: MediaQuery.of(context).size.width * 0.423,
        ),
        layout: CityLayout.codeFirst,
      ),
      CityData(
        name: "Hyderabad",
        code: "HYD",
        position: Position(
          top: MediaQuery.of(context).size.height * 0.336,
          right: MediaQuery.of(context).size.width * 0.372,
        ),
        layout: CityLayout.codeFirst,
      ),
      CityData(
        name: "Pune",
        code: "PNQ",
        position: Position(
          top: MediaQuery.of(context).size.height * 0.33,
          right: MediaQuery.of(context).size.width * 0.431,
        ),
        layout: CityLayout.nameFirst,
      ),
      CityData(
        name: "Mumbai",
        code: "BOM",
        position: Position(
          top: MediaQuery.of(context).size.height * 0.292,
          right: MediaQuery.of(context).size.width * 0.44,
        ),
        layout: CityLayout.vertical,
      ),
      CityData(
        name: "Ahmedabad",
        code: "AMD",
        position: Position(
          top: MediaQuery.of(context).size.height * 0.25,
          right: MediaQuery.of(context).size.width * 0.439,
        ),
        layout: CityLayout.vertical,
      ),
      CityData(
        name: "Delhi",
        code: "DEL",
        position: Position(
          top: MediaQuery.of(context).size.height * 0.195,
          right: MediaQuery.of(context).size.width * 0.416,
        ),
        layout: CityLayout.codeVertical,
      ),
      CityData(
        name: "Amritsar",
        code: "ATQ",
        position: Position(
          top: MediaQuery.of(context).size.height * 0.144,
          right: MediaQuery.of(context).size.width * 0.427,
        ),
        layout: CityLayout.vertical,
      ),
    ];
  }
}
