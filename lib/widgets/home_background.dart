import 'package:flutter/material.dart';
import 'package:weatherapp/constants/constant.dart';

class HomeBackground extends StatelessWidget {
  const HomeBackground({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage(AppImages.background))),
      child: Container(
        padding: const EdgeInsets.only(top: 70),
        decoration: const BoxDecoration(
            image: DecorationImage(
                alignment: Alignment(0, 0.5),
                image: AssetImage(AppImages.house))),
        child: child,
      ),
    );
  }
}
