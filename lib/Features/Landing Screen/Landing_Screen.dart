// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:power_zone/Core/Costum_Color/App%20Colors/app_colors.dart';
import 'package:power_zone/Features/Guest%20Screens/guest_screen.dart';

import '../../Core/Costum Widgets/Common btn/costum_btn.dart';
import '../../Core/Costum Widgets/Common TextButton/costum_textbutton.dart';
import '../../Core/Costum Widgets/Common SizedBox/costum_widgets.dart';
import '../Login Screen/Login_Screen.dart';
import '../SignUp Screen/SignUp_Screen.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  Appcolors appcolors = Appcolors();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "images/back4.jpg",
            ),
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.7), BlendMode.darken),
            fit: BoxFit.cover,
          ),
        ),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Center(
              child: Padding(
                padding: const EdgeInsets.all(40.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 200.h,
                      width: 500.w,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/logo.png'),
                          colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.5),
                            BlendMode.dstIn,
                          ),
                        ),
                      ),
                    ),
                    fixheight,
                    fixheight,
                    Container(
                      child: costum_button(
                        text: 'Register',
                        btnColor: appcolors.blue,
                        textColor: Colors.white,
                        onpressed: () {
                          Get.to(
                            SignUpScreen(),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: costum_button(
                        text: 'Login',
                        btnColor: appcolors.white,
                        textColor: Colors.black,
                        onpressed: () {
                          Get.to(
                            LoginScreen(),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    costum_textbutton(
                      name: 'Continue as a Guest',
                      fontsize: 22,
                      txtColor: appcolors.white,
                      onpressed: () {
                        Get.to(
                          GuestScreen(),
                        );
                      },
                    ),
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
