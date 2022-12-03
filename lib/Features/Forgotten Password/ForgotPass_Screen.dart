import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:power_zone/Core/Costum%20Widgets/Common%20SizedBox/costum_widgets.dart';
import 'package:power_zone/Core/Costum%20Widgets/Common%20btn/costum_btn.dart';

import '../../Core/Costum Widgets/Common Text/costum_txt.dart';
import '../../Core/Costum Widgets/Common TextField/costum_textField.dart';
import '../../Core/Costum_Color/App Colors/app_colors.dart';

class ForgotPassScreen extends StatefulWidget {
  const ForgotPassScreen({super.key});

  @override
  State<ForgotPassScreen> createState() => _ForgotPassScreenState();
}

class _ForgotPassScreenState extends State<ForgotPassScreen> {
  var email = false.obs;
  var emailcontroller = TextEditingController();

  Appcolors appcolors = Appcolors();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/back2.jpeg"),
          colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.6), BlendMode.colorBurn),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 60.h),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "POWER  ",
                  style: GoogleFonts.actor(
                    fontSize: 36,
                    color: appcolors.white,
                    letterSpacing: 1.8,
                  ),
                ),
                Text(
                  "ZONE",
                  style: GoogleFonts.actor(
                    fontSize: 36,
                    color: appcolors.blue,
                    letterSpacing: 1.8,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 150.h,
            ),
            Text(
              'Forget Password',
              style: GoogleFonts.alike(
                  color: appcolors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 40.sm),
            ),
            fixheight1,
            Text(
              '   Train and live the new experience of exercising at home.',
              style: GoogleFonts.aclonica(
                color: Colors.grey[400],
                fontSize: 16.sm,
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.w),
              child: Costum_txt(
                text: 'Email',
                fontcolor: appcolors.white,
              ),
            ),
            costum_txtField(
              controller: emailcontroller,
              email: email,
              hintTxt: 'Enter Your Emial',
              icon: Icons.email_outlined,
              icon2: Icons.done,
            ),
            fixheight,
            costum_button(
              text: 'Submit',
              btnColor: appcolors.blue,
              textColor: appcolors.white,
              onpressed: () {},
            ),
            fixheight,
            costum_button(
              text: 'Cancel',
              btnColor: Colors.transparent,
              textColor: appcolors.white,
              onpressed: () {},
            )
          ]),
        ),
      ),
    );
  }
}
