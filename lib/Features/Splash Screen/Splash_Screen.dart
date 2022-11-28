// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:power_zone/Features/Home%20Screens/BottomNavBar.dart';
import 'package:power_zone/Features/Home%20Screens/Home_Screen.dart';
import 'package:power_zone/Features/Login%20Screen/Login_Screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Landing Screen/Landing_Screen.dart';

String? finalEmail;

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    getValidationData().whenComplete(() async {
      Timer(
          Duration(seconds: 6),
          () => Get.offAll(
              finalEmail == null ? LandingScreen() : BottomNavBar()));
    });
    super.initState();
  }

  Future getValidationData() async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    var ObtainedEmail = sharedPreferences.getString('Email');

    setState(() {
      finalEmail = ObtainedEmail;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'images/back.jpg',
            ),
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.5), BlendMode.darken),
            fit: BoxFit.cover,
          ),
        ),
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.transparent,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 140),
                    height: 280.h,
                    width: 280.w,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          "images/logo.png",
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 100.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Lottie.asset(
                    'images/loading.json',
                    height: 140.h,
                    repeat: true,
                    reverse: true,
                    animate: true,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
