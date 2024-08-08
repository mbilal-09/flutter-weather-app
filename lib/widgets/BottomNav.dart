import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:weatherapp/constants/constant.dart';
import 'package:weatherapp/screens/Home.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  List<Widget> screens = [
    const Center(),
    const Home(),
    const Center(),
  ];

  int selectedIndex = 1;

  void onBottomTap(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      extendBody: true,
      bottomNavigationBar: Stack(
        clipBehavior: Clip.none,
        children: [
          ClipPath(
            clipper: CustomClipPath(),
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                child: Container(
                  height: 100,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: const BoxDecoration(
                    color: AppColors.primaryLight,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () => onBottomTap(0),
                        icon: const Icon(
                          AppIcons.plus,
                          color: AppColors.white,
                          size: 30,
                        ),
                      ),
                      IconButton(
                        onPressed: () => onBottomTap(2),
                        icon: const Icon(
                          AppIcons.menu,
                          color: AppColors.white,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: MediaQuery.of(context).size.width / 2 - 50,
            child: Container(
              height: 100,
              width: 100,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(70),
                    topRight: Radius.circular(70)),
                color: AppColors.secondary,
              ),
              child: Center(
                child: Container(
                  height: 70,
                  width: 70,
                  decoration: const BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.all(Radius.circular(100))),
                  child: IconButton(
                    onPressed: () => onBottomTap(1),
                    icon: const Icon(
                      AppIcons.home,
                      color: AppColors.primary,
                      size: 40,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;

    final path = Path();

    path.lineTo(0, h);

    path.lineTo(w, h);

    path.lineTo(w, 0);

    path.quadraticBezierTo(w * 0.5, h - 10, 0, 0);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
