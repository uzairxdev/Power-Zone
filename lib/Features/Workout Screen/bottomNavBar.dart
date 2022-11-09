import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:power_zone/Features/Workout%20Screen/Workout_Screen.dart';
import 'package:power_zone/Features/Profile%20Screen/Profile_Screen.dart';

import '../../Core/Costum_Color/App Colors/app_colors.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
    required this.appcolors,
  }) : super(key: key);

  final Appcolors appcolors;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 19, 20, 41),
      child: Padding(
        padding: EdgeInsets.only(left: 10.w, right: 10.w, bottom: 3.h),
        child: GNav(
            gap: 10,
            backgroundColor: Color.fromARGB(255, 19, 20, 41),
            color: Colors.grey,
            activeColor: appcolors.blue,
            tabBackgroundColor: Colors.grey.shade800,
            padding: EdgeInsets.all(16),
            iconSize: 26,
            hoverColor: Colors.blue.withOpacity(0.5),
            tabs: [
              GButton(
                icon: Icons.fitness_center_outlined,
                text: 'Workout',
                onPressed: () {
                  Get.to(
                    WorkoutScreen(),
                  );
                },
              ),
              GButton(
                icon: Icons.grid_view_rounded,
                text: 'Category',
                onPressed: () {},
              ),
              GButton(
                icon: Icons.person,
                text: 'Profile',
                onPressed: () {
                  Get.to(
                    ProfileScreen(),
                  );
                },
              ),
            ]),
      ),
    );
  }
}
