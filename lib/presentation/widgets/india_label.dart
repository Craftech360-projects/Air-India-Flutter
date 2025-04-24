import 'package:air_india/models/continent_data.dart';
import 'package:air_india/models/position_model.dart';
import 'package:flutter/material.dart';

class IndiaLabel extends StatelessWidget {
  final Function(BuildContext, ContinentData) onTap;

  const IndiaLabel({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: MediaQuery.of(context).size.height * 0.468,
      right: MediaQuery.of(context).size.width * 0.422,
      child: InkWell(
        onTap: () => onTap(
            context,
            ContinentData(
              name: "India",
              position: Position(
                bottom: MediaQuery.of(context).size.height * 0.468,
                right: MediaQuery.of(context).size.width * 0.422,
              ),
            )),
        child: Text(
          "INDIA",
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ),
    );
  }
}
