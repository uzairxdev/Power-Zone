import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:power_zone/Core/Costum_Color/App%20Colors/app_colors.dart';

import '../../Core/Costum Widgets/Common btn/costum_btn.dart';
import '../../Core/Costum Widgets/Common TextField/costum_textField.dart';
import '../../Core/Costum Widgets/Common Text/costum_txt.dart';
import '../../Core/Costum Widgets/Common SizedBox/costum_widgets.dart';
import '../Ultimate Women/UltimateWomen_Screen.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  Appcolors appcolors = Appcolors();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage(
              'images/back4.jpg',
            ),
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.7), BlendMode.darken),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 35),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 60.0,
                    child: Padding(
                      padding: EdgeInsets.only(
                        bottom: 15.0,
                        right: 15.0,
                      ),
                      child: Icon(
                        Icons.person_add_outlined,
                        size: 90,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Costum_txt(
                    text: 'Personal Details',
                    fontcolor: appcolors.white,
                  ),
                  fixheight,
                  Padding(
                    padding: EdgeInsets.only(right: 230.w, bottom: 5.h),
                    child: Costum_txt(text: 'Name', fontcolor: appcolors.white),
                  ),
                  costum_txtfield3(
                    hintText: 'Enter Full Name',
                    prefixicon: Icons.person_outline,
                  ),
                  fixheight,
                  Padding(
                    padding: EdgeInsets.only(right: 210.w, bottom: 5.h),
                    child:
                        Costum_txt(text: 'Contact', fontcolor: appcolors.white),
                  ),
                  costum_txtfield3(
                    hintText: 'Enter Your Contact',
                    prefixicon: Icons.contact_phone_outlined,
                  ),
                  fixheight,
                  Padding(
                    padding: EdgeInsets.only(right: 210.w, bottom: 5.h),
                    child: Costum_txt(
                        text: 'Category', fontcolor: appcolors.white),
                  ),
                  costum_txtfield3(
                    hintText: 'Enter Your Category',
                    prefixicon: Icons.category_outlined,
                  ),
                  fixheight,
                  Padding(
                    padding: EdgeInsets.only(right: 230.w, bottom: 5.h),
                    child:
                        Costum_txt(text: 'Weight', fontcolor: appcolors.white),
                  ),
                  costum_txtfield3(
                    hintText: 'Enter Your Weight',
                    prefixicon: Icons.line_weight_outlined,
                  ),
                  fixheight,
                  Padding(
                    padding: EdgeInsets.only(right: 250.w, bottom: 5.h),
                    child: Costum_txt(text: 'Age', fontcolor: appcolors.white),
                  ),
                  costum_txtfield3(
                    hintText: 'Enter Your Age',
                    prefixicon: Icons.live_help_outlined,
                  ),
                  fixheight,
                  costum_button(
                    text: 'Continue',
                    btnColor: appcolors.blue,
                    textColor: Colors.white,
                    onpressed: () {
                      Get.to(
                        UtlimateWomenScreen(),
                      );
                    },
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
