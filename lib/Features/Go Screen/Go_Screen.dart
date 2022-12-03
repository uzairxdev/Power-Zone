import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Core/Costum Widgets/Common btn/costum_btn.dart';
import '../../Core/Costum Widgets/Common TextButton/costum_textbutton.dart';
import '../../Core/Costum Widgets/Common Text/costum_txt.dart';
import '../../Core/Costum Widgets/Common SizedBox/costum_widgets.dart';
import '../../Core/Costum_Color/App Colors/app_colors.dart';
import '../OnlineCourse Screens/OnlineCourse_Screen.dart';
import '../Home Screens/BottomNavBar.dart';

class GoScreen extends StatefulWidget {
  const GoScreen({super.key});

  @override
  State<GoScreen> createState() => _GoScreenState();
}

class _GoScreenState extends State<GoScreen> {
  Appcolors appcolors = Appcolors();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const NetworkImage(
              'https://images.pexels.com/photos/9602287/pexels-photo-9602287.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
            ),
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.5), BlendMode.darken),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(
              children: [
                const SizedBox(
                  height: 320,
                ),
                Container(
                  height: 340.h,
                  width: 350.w,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 132, 95, 255)
                        .withOpacity(0.3)
                        .withBlue(225),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              height: 80,
                            ),
                            Text(
                              'F r o m  D e n n i',
                              style: GoogleFonts.lato(
                                color: Colors.grey,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(
                              width: 120.w,
                            ),
                            Text(
                              '30 min',
                              style: GoogleFonts.laila(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Costum_txt(
                          text: 'Biceps Curel',
                          fontcolor: Colors.white,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Perfect for training your body balance and endurance',
                          style: TextStyle(
                            color: appcolors.white,
                            fontSize: 15,
                            height: 1.5,
                          ),
                        ),
                        fixheight,
                        Row(
                          children: [
                            Container(
                              height: 40.h,
                              width: 150.w,
                              color: Colors.black.withOpacity(0.5),
                              child: costum_textbutton(
                                name: 'Do it Anywhere',
                                fontsize: 18,
                                txtColor: Colors.white,
                                onpressed: () {},
                              ),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Container(
                              height: 40.h,
                              width: 130.w,
                              color: Colors.black.withOpacity(0.5),
                              child: costum_textbutton(
                                name: 'Online Course',
                                fontsize: 18,
                                txtColor: Colors.white,
                                onpressed: () {
                                  Get.to(
                                    OnlineCourse(),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                        fixheight,
                        costum_button(
                          text: 'Go',
                          btnColor: appcolors.blue,
                          textColor: Colors.white,
                          onpressed: () {
                            Get.to(BottomNavBar());
                          },
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
