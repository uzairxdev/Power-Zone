import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:power_zone/Core/Costum%20Widgets/Common%20SizedBox/costum_widgets.dart';
import 'package:power_zone/Core/Costum_Color/App%20Colors/app_colors.dart';
import 'package:power_zone/Features/Pro%20Workout%20Screens/Screens/2nd_Screen.dart';
import 'package:power_zone/Features/Pro%20Workout%20Screens/Helper%20files/Costum_Container.dart';
import 'package:power_zone/Features/Pro%20Workout%20Screens/Helper%20files/costum_button.dart';
import 'package:power_zone/Features/Pro%20Workout%20Screens/Helper%20files/costum_row.dart';
import 'package:power_zone/Features/Pro%20Workout%20Screens/Screens/4th_Screen.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key});

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  Appcolors appcolors = Appcolors();
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage(
              'images/back9.png',
            ),
            colorFilter: ColorFilter.mode(
                Colors.blue.withOpacity(0.7), BlendMode.darken),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 30.h),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20.h),
                  child: Image.asset(
                    'images/zone.png',
                    scale: 8,
                  ),
                ),
                fixheight3,
                CostumRow(appcolors: appcolors, text: '03 of 10'),
                SizedBox(
                  height: 150.h,
                ),
                Text(
                  "Choose your target body type?",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 50.h,
                ),
                button(
                  text: 'Cut',
                  textColor: Colors.white,
                  onpressed: () {
                    Get.to(FourthScreen());
                  },
                ),
                fixheight,
                button(
                  text: 'Bulk',
                  textColor: Colors.white,
                  onpressed: () {
                    Get.to(FourthScreen());
                  },
                ),
                fixheight,
                button(
                  text: 'Extra Bulk',
                  textColor: Colors.white,
                  onpressed: () {
                    Get.to(FourthScreen());
                  },
                ),
                SizedBox(
                  height: 145.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Row(
                    children: [
                      CostumContainer(color: Colors.grey),
                      fixwidth3,
                      CostumContainer(color: Colors.grey),
                      fixwidth3,
                      CostumContainer(color: Colors.white),
                      fixwidth3,
                      CostumContainer(color: Colors.grey),
                      fixwidth3,
                      CostumContainer(color: Colors.grey),
                      fixwidth3,
                      CostumContainer(color: Colors.grey),
                      fixwidth3,
                      CostumContainer(color: Colors.grey),
                      fixwidth3,
                      CostumContainer(color: Colors.grey),
                      fixwidth3,
                      CostumContainer(color: Colors.grey),
                      fixwidth3,
                      CostumContainer(color: Colors.grey),
                      fixwidth3,
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
