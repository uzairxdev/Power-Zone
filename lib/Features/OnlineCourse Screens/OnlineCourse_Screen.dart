import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:power_zone/Core/Costum_Color/App%20Colors/app_colors.dart';

import '../../Core/Costum Widgets/Common SizedBox/costum_widgets.dart';

class OnlineCourse extends StatefulWidget {
  const OnlineCourse({super.key});

  @override
  State<OnlineCourse> createState() => _OnlineCourseState();
}

class _OnlineCourseState extends State<OnlineCourse> {
  Appcolors appcolors = Appcolors();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage(
              'images/back6.jpg',
            ),
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.3), BlendMode.darken),
            fit: BoxFit.cover,
          ),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 30.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 200.h,
                  ),
                  Row(
                    children: [
                      Text(
                        "H E A L T H",
                        style: GoogleFonts.lato(
                          color: Colors.white.withOpacity(0.6.sm),
                        ),
                      ),
                      fixwidth,
                      Text(
                        'F I T N E S S',
                        style: GoogleFonts.lato(
                          color: Colors.grey.withOpacity(0.5.sm),
                        ),
                      ),
                    ],
                  ),
                  fixheight,
                  fixwidth,
                  Text(
                    'Start Shining',
                    style: GoogleFonts.alike(
                      color: Colors.white.withOpacity(0.6.sm),
                      fontSize: 32.sm,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  fixheight,
                  Text(
                    'Diverse and rich experience in the implementation of the planned tragets',
                    style: GoogleFonts.adventPro(
                      color: Colors.white.withOpacity(0.5.sm),
                      fontSize: 22.sm,
                      height: 1.5.h,
                    ),
                  ),
                  fixheight,
                  Container(
                    height: 50.h,
                    width: 200.w,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(
                        color: Colors.white.withOpacity(0.5.sm),
                        width: 2,
                        style: BorderStyle.solid,
                      ),
                    ),
                    child: Center(
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'R E A D  M O R E',
                          style: GoogleFonts.lato(
                            color: Colors.white.withOpacity(0.6.sm),
                            fontSize: 24,
                          ),
                        ),
                      ),
                    ),
                  ),
                  fixheight,
                  fixheight,
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'H E A L T H',
                            style: GoogleFonts.lato(
                              color: Colors.white.withOpacity(0.7),
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Diverse experience\nin theimplementation',
                            style: GoogleFonts.lato(
                              color: Colors.white.withOpacity(0.5),
                              fontSize: 10,
                              height: 1.5,
                            ),
                          )
                        ],
                      ),
                      fixwidth,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'F I T N E S S',
                            style: GoogleFonts.lato(
                              color: Colors.white.withOpacity(0.7),
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'What should be\nthe pulse training?',
                            style: GoogleFonts.lato(
                              color: Colors.white.withOpacity(0.5),
                              fontSize: 10,
                              height: 1.5,
                            ),
                          ),
                        ],
                      ),
                      fixwidth,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'W O R K O U T',
                            style: GoogleFonts.lato(
                              color: Colors.white.withOpacity(0.7),
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '6 benifits of monday\nworkout',
                            style: GoogleFonts.lato(
                              color: Colors.white.withOpacity(0.5),
                              fontSize: 10,
                              height: 1.5,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  fixheight,
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/online.jpg'),
                        ),
                      ),
                    ),
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
