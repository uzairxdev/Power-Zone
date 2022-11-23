import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:power_zone/Core/Costum%20Widgets/Common%20TextButton/costum_textbutton.dart';
import 'package:power_zone/Features/SignUp%20Screen/SignUp_Screen.dart';
import 'package:power_zone/Features/Workout%20Screen/Model.dart';

import '../../Core/Costum Widgets/Common SizedBox/costum_widgets.dart';
import '../../Core/Costum_Color/App Colors/app_colors.dart';

class FullBodyWorkout2 extends StatelessWidget {
  const FullBodyWorkout2({
    Key? key,
    required this.appcolors,
  }) : super(key: key);

  final Appcolors appcolors;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Full Body Workout",
                style: GoogleFonts.lato(
                  fontSize: 30,
                  color: appcolors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          fixheight,
          fixheight3,
          Container(
            width: double.infinity,
            height: 200.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'You are Using a Guest Mode \n\n',
                  style: GoogleFonts.alike(
                      color: appcolors.red,
                      fontSize: 23.sm,
                      fontWeight: FontWeight.bold),
                ),
                costum_textbutton(
                    name: 'Please Sign Up',
                    fontsize: 23,
                    txtColor: appcolors.red,
                    decoration: TextDecoration.underline,
                    onpressed: () {
                      Get.to(SignUpScreen());
                    })
              ],
            ),
          ),
        ],
      ),
    );
  }
}
