import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:power_zone/Core/Costum_Color/App%20Colors/app_colors.dart';

import '../../Core/Costum Widgets/Common TextButton/costum_textbutton.dart';
import '../../Core/Costum Widgets/Common Text/costum_txt.dart';
import '../../Core/Costum Widgets/Common SizedBox/costum_widgets.dart';
import '../Start Screen/Start_Screen.dart';
import '../OnlineCourse Screens/OnlineCourse_Screen.dart';

class UtlimateWomenScreen extends StatefulWidget {
  const UtlimateWomenScreen({super.key});

  @override
  State<UtlimateWomenScreen> createState() => _UtlimateWomenScreenState();
}

class _UtlimateWomenScreenState extends State<UtlimateWomenScreen> {
  Appcolors appcolors = Appcolors();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: const AssetImage(
            'images/back7.jpg',
          ),
          colorFilter:
              ColorFilter.mode(Colors.black.withOpacity(0.3), BlendMode.darken),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          resizeToAvoidBottomInset: false,
          body: Column(
            children: [
              const SizedBox(
                height: 450,
              ),
              Container(
                height: 210.h,
                width: 350.w,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 132, 95, 255)
                      .withOpacity(0.3)
                      .withBlue(225),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      fixheight,
                      Costum_txt(
                        text: 'Ultimate. Women',
                        fontcolor: Colors.white,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'The Scope of our effectiveness perform important development tasks appropriate activation condition',
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
                              onpressed: () {
                                Get.to(
                                  StartScreen(),
                                );
                              },
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
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
