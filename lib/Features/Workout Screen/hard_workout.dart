import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:power_zone/Features/Workout%20Screen/Model.dart';

import '../../Core/Costum Widgets/Common SizedBox/costum_widgets.dart';
import '../../Core/Costum_Color/App Colors/app_colors.dart';

class HardWorkout extends StatelessWidget {
  const HardWorkout({
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
                "Hard Workout",
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
            child: ListView.builder(
                itemCount: hard.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, index) {
                  return InkWell(
                    onTap: () {
                      Get.to(hard[index].pagename);
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      child: Column(
                        children: [
                          Container(
                            height: 160.h,
                            width: 135.w,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  hard[index].imagUrl,
                                ),
                                colorFilter: ColorFilter.mode(
                                    Colors.black.withOpacity(0.4),
                                    BlendMode.darken),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          fixheight3,
                          Text(
                            hard[index].name,
                            style: TextStyle(
                              color: appcolors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
