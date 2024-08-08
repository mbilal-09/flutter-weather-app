import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class AppSizes {
  static const double base = 8;
  static const double font = 14;
  static const double radiusSmall = 4;
  static const double radius = 30;
  static const double padding = 20;
  static const double padding2 = 12;
}

class AppImages {
  static const String _imagePath = 'assets/images';

  static const String background = '$_imagePath/background.png';
  static const String house = '$_imagePath/house.png';
  static const String moonCloudRain = '$_imagePath/moon_cloud_rain.png';
  static const String moonCloudWind = '$_imagePath/moon_cloud_wind.png';
  static const String sunCloudRain = '$_imagePath/sun_cloud_rain.png';
  static const String sunCloudWindRain = '$_imagePath/sun_cloud_wind_rain.png';
  static const String tornado = '$_imagePath/tornado.png';
}

class AppIcons {
  static const IconData home = FluentSystemIcons.ic_fluent_home_filled;
  static const IconData menu = Icons.menu;
  static const IconData waterDrop = Icons.water_drop;
  static const IconData sun = Icons.sunny;
  static const IconData plus = Icons.add;
  static const IconData wind = Icons.air;
  static const IconData thermostat = Icons.thermostat;
  static const IconData eye = Icons.remove_red_eye;
  static const IconData airQuality = Icons.blur_on;
  static const IconData humidity = Icons.accessibility;
}

class AppColors {
  static const Color primary = Color(0xFF48319D);
  static const Color primaryLight = Color.fromARGB(135, 72, 49, 157);
  static const Color secondary = Color(0xFF1F1D47);
  static const Color pink = Color(0xFFC427FB);
  static const Color grey = Color(0xFFE0D9FF);
  static const Color white = Colors.white;
  static const Color black = Colors.black;
  static const Color blackLight = Color.fromARGB(94, 47, 47, 47);
  static Color textGrey1 = Colors.grey[200]!.withOpacity(0.6);
  static Color textGrey2 = Colors.grey[200]!.withOpacity(0.3);
  static Color textGrey3 = Colors.grey[200]!.withOpacity(0.18);
  static const Color transparent = Colors.transparent;
}

class AppStyles {
  static Map<String, TextStyle> textStyles = {
    // Thin Fonts

    'Thin9': const TextStyle(
      fontFamily: 'PoppinsThin',
      fontSize: 9,
    ),

    // Regular Fonts

    'Regular9': const TextStyle(
      fontFamily: 'Poppins',
      fontSize: 9,
    ),
    'Regular10': const TextStyle(
      fontFamily: 'Poppins',
      fontSize: 10,
    ),
    'Regular11': const TextStyle(
      fontFamily: 'Poppins',
      fontSize: 11,
    ),
    'Regular12': const TextStyle(
      fontFamily: 'Poppins',
      fontSize: 12,
    ),
    'Regular14': const TextStyle(
      fontFamily: 'Poppins',
      fontSize: 14,
    ),
    'Regular16': const TextStyle(
      fontFamily: 'Poppins',
      fontSize: 16,
    ),
    'Regular18': const TextStyle(
      fontFamily: 'Poppins',
      fontSize: 18,
    ),
    'Regular20': const TextStyle(
      fontFamily: 'Poppins',
      fontSize: 20,
    ),
    'Regular22': const TextStyle(
      fontFamily: 'Poppins',
      fontSize: 22,
    ),
    'Regular24': const TextStyle(
      fontFamily: 'Poppins',
      fontSize: 24,
    ),
    'Regular26': const TextStyle(
      fontFamily: 'Poppins',
      fontSize: 26,
    ),
    // Medium Fonts

    'Medium9': const TextStyle(
      fontFamily: 'PoppinsMedium',
      fontSize: 9,
    ),
    'Medium10': const TextStyle(
      fontFamily: 'PoppinsMedium',
      fontSize: 10,
    ),
    'Medium11': const TextStyle(
      fontFamily: 'PoppinsMedium',
      fontSize: 11,
    ),
    'Medium12': const TextStyle(
      fontFamily: 'PoppinsMedium',
      fontSize: 12,
    ),
    'Medium14': const TextStyle(
      fontFamily: 'PoppinsMedium',
      fontSize: 14,
    ),
    'Medium16': const TextStyle(
      fontFamily: 'PoppinsMedium',
      fontSize: 16,
    ),
    'Medium18': const TextStyle(
      fontFamily: 'PoppinsMedium',
      fontSize: 18,
    ),
    'Medium20': const TextStyle(
      fontFamily: 'PoppinsMedium',
      fontSize: 20,
    ),
    'Medium22': const TextStyle(
      fontFamily: 'PoppinsMedium',
      fontSize: 22,
    ),
    'Medium24': const TextStyle(
      fontFamily: 'PoppinsMedium',
      fontSize: 24,
    ),
    'Medium26': const TextStyle(
      fontFamily: 'PoppinsMedium',
      fontSize: 26,
    ),
    // Semi Bold Fonts

    'SemiBold9': const TextStyle(
      fontFamily: 'PoppinsSemiBold',
      fontSize: 9,
    ),
    'SemiBold10': const TextStyle(
      fontFamily: 'PoppinsSemiBold',
      fontSize: 10,
    ),
    'SemiBold11': const TextStyle(
      fontFamily: 'PoppinsSemiBold',
      fontSize: 11,
    ),
    'SemiBold12': const TextStyle(
      fontFamily: 'PoppinsSemiBold',
      fontSize: 12,
    ),
    'SemiBold14': const TextStyle(
      fontFamily: 'PoppinsSemiBold',
      fontSize: 14,
    ),
    'SemiBold16': const TextStyle(
      fontFamily: 'PoppinsSemiBold',
      fontSize: 16,
    ),
    'SemiBold18': const TextStyle(
      fontFamily: 'PoppinsSemiBold',
      fontSize: 18,
    ),
    'SemiBold20': const TextStyle(
      fontFamily: 'PoppinsSemiBold',
      fontSize: 20,
    ),
    'SemiBold22': const TextStyle(
      fontFamily: 'PoppinsSemiBold',
      fontSize: 22,
    ),
    'SemiBold24': const TextStyle(
      fontFamily: 'PoppinsSemiBold',
      fontSize: 24,
    ),
    'SemiBold26': const TextStyle(
      fontFamily: 'PoppinsSemiBold',
      fontSize: 26,
    ),
    // Bold Fonts

    'Bold9': const TextStyle(
      fontFamily: 'PoppinsBold',
      fontSize: 9,
    ),
    'Bold10': const TextStyle(
      fontFamily: 'PoppinsBold',
      fontSize: 10,
    ),
    'Bold11': const TextStyle(
      fontFamily: 'PoppinsBold',
      fontSize: 11,
    ),
    'Bold12': const TextStyle(
      fontFamily: 'PoppinsBold',
      fontSize: 12,
    ),
    'Bold14': const TextStyle(
      fontFamily: 'PoppinsBold',
      fontSize: 14,
    ),
    'Bold16': const TextStyle(
      fontFamily: 'PoppinsBold',
      fontSize: 16,
    ),
    'Bold18': const TextStyle(
      fontFamily: 'PoppinsBold',
      fontSize: 18,
    ),
    'Bold20': const TextStyle(
      fontFamily: 'PoppinsBold',
      fontSize: 20,
    ),
    'Bold22': const TextStyle(
      fontFamily: 'PoppinsBold',
      fontSize: 22,
    ),
    'Bold24': const TextStyle(
      fontFamily: 'PoppinsBold',
      fontSize: 24,
    ),
    'Bold26': const TextStyle(
      fontFamily: 'PoppinsBold',
      fontSize: 26,
    ),
  };
}
