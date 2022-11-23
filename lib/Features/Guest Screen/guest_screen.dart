import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Core/Costum Widgets/Common SizedBox/costum_widgets.dart';
import '../../Core/Costum Widgets/Common TextButton/costum_textbutton.dart';
import '../../Core/Costum_Color/App Colors/app_colors.dart';
import '../Landing Screen/Landing_Screen.dart';
import '../Workout Guest Screen/BottomNavBar2.dart';

class GuestScreen extends StatefulWidget {
  @override
  _GuestScreenState createState() => _GuestScreenState();
}

class _GuestScreenState extends State<GuestScreen> {
  Appcolors appcolors = Appcolors();
  bool click = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/back8.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
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
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "About You",
                    style: GoogleFonts.lato(
                      fontSize: 42,
                      fontWeight: FontWeight.bold,
                      color: appcolors.white,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "We want to know more about you, follow the next steps\n to complete the information",
                    style: GoogleFonts.aBeeZee(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 40.h),
                    child: Container(
                        height: 200.h,
                        width: MediaQuery.of(context).size.width,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 210.h,
                                  width: 180.w,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF232441),
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  child: Padding(
                                    padding:
                                        EdgeInsets.only(left: 20.w, top: 30.h),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 100.w),
                                          child: IconButton(
                                              onPressed: () {
                                                setState(() {
                                                  click = !click;
                                                });
                                              },
                                              icon: Icon(
                                                (click == true)
                                                    ? Icons.check_circle_outline
                                                    : Icons.check_circle,
                                                color: appcolors.blue,
                                                size: 30,
                                              )),
                                        ),
                                        Text(
                                          "I'm",
                                          style: GoogleFonts.lato(
                                            fontSize: 30,
                                            color: appcolors.blue,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 3.h,
                                        ),
                                        Text(
                                          '    Beginner',
                                          style: GoogleFonts.lato(
                                            fontSize: 30,
                                            color: appcolors.blue,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        Text(
                                          "I have never trained\n     Its My First Time",
                                          style: GoogleFonts.lato(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: appcolors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                fixwidth,
                                Container(
                                  height: 210.h,
                                  width: 180.w,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF232441),
                                    borderRadius: BorderRadius.circular(20.r),
                                  ),
                                  child: Padding(
                                    padding:
                                        EdgeInsets.only(left: 20.w, top: 30.h),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 100.w),
                                          child: IconButton(
                                            onPressed: () {
                                              setState(() {
                                                click = !click;
                                              });
                                            },
                                            icon: Icon(
                                              (click == false)
                                                  ? Icons.check_circle_outline
                                                  : Icons.check_circle,
                                              color: appcolors.blue,
                                              size: 30,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          "I'm",
                                          style: GoogleFonts.lato(
                                            fontSize: 30,
                                            color: appcolors.blue,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 3.h,
                                        ),
                                        Text(
                                          '   Expert',
                                          style: GoogleFonts.lato(
                                            fontSize: 30,
                                            color: appcolors.blue,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        Text(
                                          "I have trained \n      Several Times",
                                          style: GoogleFonts.lato(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: appcolors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        )),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        costum_textbutton(
                          name: 'Back',
                          fontsize: 20,
                          txtColor: Colors.grey,
                          onpressed: () {
                            Get.to(
                              LandingScreen(),
                            );
                          },
                        ),
                        Material(
                          elevation: 15.sm,
                          color: appcolors.blue,
                          borderRadius: BorderRadius.circular(
                            5.sm,
                          ),
                          child: MaterialButton(
                            minWidth: 110.w,
                            textColor: Colors.white,
                            //disabledColor: Colors.grey,
                            disabledTextColor: Colors.black,
                            padding:
                                EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                            //splashColor: Colors.grey,
                            onPressed: () {
                              Get.to(BottomNavBar2());
                            },
                            child: Text(
                              'Next',
                              style: GoogleFonts.lato(
                                fontSize: 20.sm,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
