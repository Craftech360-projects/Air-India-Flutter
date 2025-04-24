import 'package:air_india/core/assets/app_images.dart';
import 'package:air_india/helpers/city_data_helper.dart';
import 'package:air_india/helpers/continent_data_helper.dart';
import 'package:air_india/models/city_data.dart';
import 'package:air_india/models/continent_data.dart';
import 'package:air_india/presentation/widgets/city_widget.dart';
import 'package:air_india/presentation/widgets/continent_airport_list.dart';
import 'package:air_india/presentation/widgets/continent_widget.dart';
import 'package:air_india/presentation/widgets/header_content.dart';
import 'package:air_india/presentation/widgets/india_label.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  String? _selectedContinent;
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );
    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background Map Image
          Image.asset(
            AppImages.mapImage,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),

          // Header Content
          const HeaderContent(),

          // Continents
          ..._buildContinents(context),

          // India Label
          IndiaLabel(onTap: _handleContinentTap),

          // Indian Cities
          ..._buildIndianCities(context),

          // Airport List (if a continent is selected)
          if (_selectedContinent != null)
            ContinentAirportList(
              continentName: _selectedContinent!,
              fadeAnimation: _fadeAnimation,
              onClose: () {
                setState(() {
                  _selectedContinent = null;
                  _animationController.reverse();
                });
              },
            ),
        ],
      ),
    );
  }

  // Build all continent labels
  List<Widget> _buildContinents(BuildContext context) {
    final continents = ContinentDataHelper.getContinents(context);

    return continents.map((continent) {
      final bool isSelected = _selectedContinent == continent.name;
      return ContinentWidget(
        continent: continent,
        isSelected: isSelected,
        onTap: _handleContinentTap,
      );
    }).toList();
  }

  // Build all Indian cities
  List<Widget> _buildIndianCities(BuildContext context) {
    final cities = CityDataHelper.getIndianCities(context);

    return cities.map((city) {
      return CityWidget(
        city: city,
        onTap: _handleCityTap,
      );
    }).toList();
  }

  // Handle continent tap
  void _handleContinentTap(BuildContext context, ContinentData continent) {
    setState(() {
      if (_selectedContinent == continent.name) {
        // If tapping the same continent, close the list
        _selectedContinent = null;
        _animationController.reverse();
      } else {
        // If tapping a different continent, show its airports
        _selectedContinent = continent.name;
        _animationController.reset();
        _animationController.forward();
      }
    });
  }

  // Handle city tap
  void _handleCityTap(BuildContext context, CityData city) {
    // Implement city tap functionality here
  }
}
