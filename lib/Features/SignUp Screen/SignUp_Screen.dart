import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:power_zone/Core/Costum_Color/App%20Colors/app_colors.dart';

import '../../Core/Costum Widgets/Common btn/costum_btn.dart';
import '../../Core/Costum Widgets/Common TextField/costum_textField.dart';
import '../../Core/Costum Widgets/Common TextButton/costum_textbutton.dart';
import '../../Core/Costum Widgets/Common Text/costum_txt.dart';
import '../../Core/Costum Widgets/Common SizedBox/costum_widgets.dart';
import '../Details Screen/Details_Screen.dart';
import '../Login Screen/Login_Screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  var email = false.obs;
  var emailcontroller = TextEditingController();
  var passwordcontroller = TextEditingController();
  var confirmpasswordcontroller = TextEditingController();

  Appcolors appcolors = Appcolors();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage(
              'images/back3.jpg',
            ),
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.5), BlendMode.darken),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 150.h,
                    width: 250.w,
                    child: Image.asset(
                      "images/register.png",
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 200.w, bottom: 5.h),
                    child: Costum_txt(
                        text: 'Username', fontcolor: appcolors.white),
                  ),
                  costum_txtfield3(
                    hintText: 'Username is must',
                    prefixicon: Icons.person_outline,
                    sufixicon: Icons.check,
                  ),
                  fixheight,
                  Padding(
                    padding: EdgeInsets.only(right: 230.w, bottom: 5.h),
                    child:
                        Costum_txt(text: 'Email', fontcolor: appcolors.white),
                  ),
                  costum_txtField(
                      controller: emailcontroller,
                      email: email,
                      hintTxt: 'Enter Your Email',
                      icon: Icons.email_outlined,
                      icon2: Icons.done),
                  fixheight,
                  Padding(
                    padding: EdgeInsets.only(right: 200.w, bottom: 5.h),
                    child: Costum_txt(
                        text: 'Password', fontcolor: appcolors.white),
                  ),
                  costum_txtField2(
                    controller: passwordcontroller,
                    hintText: 'Enter Your Password',
                  ),
                  fixheight,
                  Padding(
                    padding: EdgeInsets.only(right: 120.w, bottom: 5.h),
                    child: Costum_txt(
                        text: 'Confirm Password', fontcolor: appcolors.white),
                  ),
                  costum_txtField2(
                    controller: confirmpasswordcontroller,
                    hintText: 'Confirm Password',
                  ),
                  fixheight,
                  costum_button(
                    text: 'Next',
                    btnColor: appcolors.blue,
                    textColor: Colors.white,
                    onpressed: () {
                      Get.to(
                        DetailsScreen(),
                      );
                    },
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Row(
                    children: [
                      Text(
                        'Already have an Account?',
                        style: TextStyle(
                          color: appcolors.white,
                          fontSize: 18.sm,
                        ),
                      ),
                      fixwidth,
                      costum_textbutton(
                        name: 'Sign In',
                        fontsize: 18.sm,
                        txtColor: appcolors.white,
                        decoration: TextDecoration.underline,
                        onpressed: () {
                          Get.to(
                            LoginScreen(),
                          );
                        },
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
