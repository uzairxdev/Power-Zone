import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../Core/Costum Widgets/Common TextButton/costum_textbutton.dart';
import '../../../Core/Costum_Color/App Colors/app_colors.dart';
import '../../SignUp Screen/SignUp_Screen.dart';

class GuestHomeScreen extends StatefulWidget {
  @override
  _GuestHomeScreenState createState() => _GuestHomeScreenState();
}

class _GuestHomeScreenState extends State<GuestHomeScreen> {
  Appcolors appcolors = Appcolors();
  bool click = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.transparent,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/back9.png"),
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.2), BlendMode.darken),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 70.0),
                  child: Text(
                    "POWER  ",
                    style: GoogleFonts.bebasNeue(
                      fontSize: 36,
                      color: appcolors.white,
                      letterSpacing: 1.8,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 70.0),
                  child: Text(
                    "ZONE",
                    style: GoogleFonts.bebasNeue(
                      fontSize: 36,
                      color: appcolors.blue,
                      letterSpacing: 1.8,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 230.h,
            ),
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
                }),
          ],
        ),
      ),
    );
  }
}
