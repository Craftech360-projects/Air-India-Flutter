import 'package:air_india/core/constants/constants.dart';
import 'package:air_india/core/themes/app_colors.dart';
import 'package:air_india/models/city_data.dart';
import 'package:air_india/presentation/widgets/city_layout.dart';
import 'package:flutter/material.dart';

class CityWidget extends StatelessWidget {
  final CityData city;
  final Function(BuildContext, CityData) onTap;

  const CityWidget({
    super.key,
    required this.city,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: city.position.top,
      bottom: city.position.bottom,
      left: city.position.left,
      right: city.position.right,
      child: InkWell(
        onTap: () => onTap(context, city),
        child: _buildCityContent(context, city),
      ),
    );
  }

  Widget _buildCityContent(BuildContext context, CityData city) {
    final codeBox = Container(
      padding: const EdgeInsets.all(2.5),
      color: AppColors.boxColor,
      child: Text(
        city.code,
        style: Theme.of(context)
            .textTheme
            .bodyMedium
            ?.copyWith(color: AppColors.black),
      ),
    );

    final cityName = Text(
      city.name,
      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            height: city.layout == CityLayout.vertical ? 1 : null,
          ),
    );

    switch (city.layout) {
      case CityLayout.vertical:
        return Column(
          children: [
            cityName,
            codeBox,
          ],
        );
      case CityLayout.codeFirst:
        return Row(
          children: [
            codeBox,
            Constants.w2,
            cityName,
          ],
        );
      case CityLayout.nameFirst:
        return Row(
          children: [
            cityName,
            Constants.w2,
            codeBox,
          ],
        );
      case CityLayout.codeVertical:
        return Column(
          children: [
            codeBox,
            Text(
              city.name,
              style:
                  Theme.of(context).textTheme.bodyMedium?.copyWith(height: 1.2),
            ),
          ],
        );
    }
  }
}
