import 'package:flutter/material.dart';
import 'package:weatherapp/constants/constant.dart';

class CurrentWeatherDetails extends StatelessWidget {
  const CurrentWeatherDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Montreal',
            style: AppStyles.textStyles['Regular26']
                ?.copyWith(color: AppColors.white),
          ),
          Container(
            transform: Matrix4.translationValues(0.0, -8.0, 0.0),
            child: Text(
              '12°',
              style: AppStyles.textStyles['Thin9']
                  ?.copyWith(color: AppColors.white, fontSize: 80),
            ),
          ),
          Container(
            transform: Matrix4.translationValues(0.0, -16.0, 0.0),
            child: Text(
              'Mostly Clear',
              style: AppStyles.textStyles['Medium20']
                  ?.copyWith(color: AppColors.textGrey1),
            ),
          ),
          Container(
            transform: Matrix4.translationValues(0.0, -16.0, 0.0),
            child: Text(
              'H:24° L:18°',
              style: AppStyles.textStyles['Medium20']
                  ?.copyWith(color: AppColors.white),
            ),
          ),
        ],
      ),
    );
  }
}
