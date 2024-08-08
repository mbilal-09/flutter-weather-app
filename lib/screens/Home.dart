import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:weatherapp/constants/constant.dart';
import 'package:weatherapp/widgets/current_weather_details.dart';
import 'package:weatherapp/widgets/home_background.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeBackground(
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        // shrinkWrap: true,
        slivers: [
          const SliverAppBar(
            floating: false,
            backgroundColor: AppColors.transparent,
            elevation: 0,
            stretch: true,
            centerTitle: false,
            expandedHeight: 225,
            flexibleSpace: FlexibleSpaceBar(
              background: CurrentWeatherDetails(),
              stretchModes: [StretchMode.zoomBackground],
              centerTitle: false,
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 200),
          ),
          SliverAppBar(
            backgroundColor: AppColors.transparent,
            expandedHeight: 1000,
            flexibleSpace: ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                child: Container(
                    height: 1000,
                    width: 400,
                    decoration: const BoxDecoration(
                      color: AppColors.primaryLight,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30)),
                    ),
                    child: Column(children: [
                      Center(
                        child: Container(
                          margin: const EdgeInsets.only(top: 5, bottom: 10),
                          width: 60,
                          height: 8,
                          decoration: BoxDecoration(
                              color: AppColors.secondary,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(children: [
                            Text(
                              'Hourly Forecast',
                              style: AppStyles.textStyles['Medium14']
                                  ?.copyWith(color: AppColors.textGrey1),
                            ),
                            Container(
                              height: 2,
                              width: 120,
                              decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: AppColors.pink,
                                      blurRadius: 5.0,
                                      spreadRadius: 1.0,
                                      offset: Offset(
                                        0.0,
                                        0.0,
                                      ),
                                    ),
                                    BoxShadow(
                                      color: AppColors.white,
                                      blurRadius: 3.0,
                                      spreadRadius: 1.0,
                                      offset: Offset(
                                        0.0,
                                        0.0,
                                      ),
                                    ),
                                  ]),
                            ),
                          ]),
                          Column(children: [
                            Text(
                              'Weekly Forecast',
                              style: AppStyles.textStyles['Medium14']
                                  ?.copyWith(color: AppColors.textGrey1),
                            ),
                            Container(
                              height: 5,
                              width: 130,
                              color: AppColors.black,
                            ),
                          ]),
                        ],
                      )
                    ])),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
