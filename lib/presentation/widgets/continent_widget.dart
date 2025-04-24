import 'package:air_india/core/themes/app_colors.dart';
import 'package:air_india/models/continent_data.dart';
import 'package:flutter/material.dart';

class ContinentWidget extends StatelessWidget {
  final ContinentData continent;
  final bool isSelected;
  final Function(BuildContext, ContinentData) onTap;

  const ContinentWidget({
    super.key,
    required this.continent,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: continent.position.top,
      bottom: continent.position.bottom,
      left: continent.position.left,
      right: continent.position.right,
      child: InkWell(
        onTap: () => onTap(context, continent),
        child: Text(
          continent.name,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: isSelected ? AppColors.yellow2 : AppColors.yellow,
              ),
        ),
      ),
    );
  }
}
