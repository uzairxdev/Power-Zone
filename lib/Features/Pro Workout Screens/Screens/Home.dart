import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:power_zone/Core/Costum%20Widgets/Common%20SizedBox/costum_widgets.dart';
import 'package:power_zone/Core/Costum%20Widgets/Common%20btn/costum_btn.dart';
import 'package:power_zone/Core/Costum_Color/App%20Colors/app_colors.dart';
import 'package:power_zone/Features/Pro%20Workout%20Screens/Screens/1st_Screen.dart';
import 'package:power_zone/Features/Pro%20Workout%20Screens/Helper%20files/costum_button.dart';
import 'package:power_zone/Features/Pro%20Workout%20Screens/Screens/Page_View.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Appcolors appcolors = Appcolors();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: const AssetImage(
            'images/back9.png',
          ),
          colorFilter:
              ColorFilter.mode(Colors.blue.withOpacity(0.7), BlendMode.darken),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20.w,
          vertical: 40.h,
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 250.h,
                ),
                Image.asset('images/zone.png'),
                fixheight,
                Text(
                  'Welcome to join with +100k members',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                fixheight2,
                Text(
                  'We need some information to make a perfect\n'
                  '           personalized plan for only you.',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 17,
                  ),
                ),
                SizedBox(
                  height: 150.h,
                ),
                button(
                  text: 'START',
                  textColor: Colors.white,
                  onpressed: () {
                    Get.to(
                      ViewPage(),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
