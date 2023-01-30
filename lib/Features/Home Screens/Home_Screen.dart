import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Core/Costum Widgets/Common SizedBox/costum_widgets.dart';
import '../../Core/Costum_Color/App Colors/app_colors.dart';
import '../OnlineCourse Screens/PurchaseTrain_Screen.dart';
import '../Profile Screen/Profile_Screen.dart';
import 'fullBody_workout.dart';
import 'hard_workout.dart';
import 'popular_workout.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Appcolors appcolors = Appcolors();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/back9.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.only(left: 14.w, right: 14.w, top: 50.h),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 10.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Hey,",
                            style: GoogleFonts.bebasNeue(
                              fontSize: 32,
                              color: appcolors.white,
                              letterSpacing: 1.8,
                            ),
                          ),
                          Text(
                            "Uzair",
                            style: GoogleFonts.bebasNeue(
                              fontSize: 32,
                              color: appcolors.blue,
                              letterSpacing: 1.8,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 48.w,
                        height: 45.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40.0),
                          border: Border.all(
                            width: 3.w,
                            color: appcolors.blue,
                          ),
                          image: const DecorationImage(
                            image: AssetImage("images/my.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 45.h),
                  child: Container(
                    width: 65.w,
                    height: 60.h,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(40.0),
                    ),
                    child: Center(
                      child: InkWell(
                        onTap: () {
                          Get.to(
                            PurchaseTrainScreen(),
                          );
                        },
                        child: Container(
                          height: 50.h,
                          width: 55.w,
                          decoration: BoxDecoration(
                            color: appcolors.blue,
                            borderRadius: BorderRadius.circular(40.0),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.play_arrow,
                              size: 40,
                              color: appcolors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20.w, top: 50.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Find ",
                            style: GoogleFonts.lato(
                              fontSize: 26,
                              color: appcolors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "your Workout",
                            style: GoogleFonts.lato(
                              fontSize: 26,
                              color: appcolors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.filter_alt_outlined,
                        size: 40,
                        color: appcolors.white,
                      )
                    ],
                  ),
                ),
                fixheight2,
                Container(
                  width: 350.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                    color: Color(0xFF232441),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "SEARCH WORKOUT",
                        hintStyle: const TextStyle(
                          color: Colors.white54,
                        ),
                        fillColor: Colors.transparent,
                        border: InputBorder.none,
                        icon: Icon(
                          Icons.search,
                          size: 30,
                          color: appcolors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                fixheight1,
                Container(
                  color: Colors.transparent,
                  width: double.infinity,
                  height: 30.h,
                  child: TabBar(
                    indicator: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(
                        width: 2.w,
                        color: appcolors.blue,
                      ),
                      borderRadius: BorderRadius.circular(30.r),
                    ),
                    tabs: [
                      Tab(
                        // text: 'Popular',
                        child: Text(
                          'Popular',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Tab(
                        // text: 'Hard Workout',
                        child: Text(
                          'Hard',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Tab(
                        // text: 'Full Body',
                        child: Text(
                          'Full Body',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                fixheight2,
                SizedBox(
                  height: 300,
                  child: TabBarView(children: [
                    PopularWorkout(appcolors: appcolors),
                    HardWorkout(appcolors: appcolors),
                    FullBodyWorkout(appcolors: appcolors),
                  ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
