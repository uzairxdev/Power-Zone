import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:power_zone/Core/Costum%20Widgets/Common%20SizedBox/costum_widgets.dart';
import 'package:power_zone/Core/Costum_Color/App%20Colors/app_colors.dart';

class PurchaseTrainScreen extends StatefulWidget {
  const PurchaseTrainScreen({super.key});

  @override
  State<PurchaseTrainScreen> createState() => _PurchaseTrainScreenState();
}

class _PurchaseTrainScreenState extends State<PurchaseTrainScreen> {
  Appcolors appcolors = Appcolors();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage(
              'images/back.jpg',
            ),
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.5), BlendMode.darken),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(
            left: 20.w,
            right: 20.w,
            top: 40.h,
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 100.w,
                      height: 30.h,
                      decoration: BoxDecoration(
                        color: appcolors.blue,
                        borderRadius: BorderRadius.circular(130.r),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 10.w),
                        child: Row(
                          children: [
                            Icon(
                              Icons.watch_later_outlined,
                              color: appcolors.white,
                            ),
                            fixwidth2,
                            Text(
                              '2 Hours',
                              style: TextStyle(
                                color: appcolors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: Icon(
                          Icons.cancel,
                          color: Colors.white.withOpacity(0.6),
                          size: 35.sm,
                        ))
                  ],
                ),
                SizedBox(
                  height: 230.h,
                ),
                Container(
                  height: 40.h,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2.w,
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 40.w,
                      vertical: 10.h,
                    ),
                    child: Row(
                      children: [
                        Text(
                          '8 ',
                          style: TextStyle(
                            color: appcolors.blue,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          'Moves',
                          style: TextStyle(
                            color: appcolors.white,
                            fontSize: 18,
                          ),
                        ),
                        fixwidth,
                        Text(
                          '10 ',
                          style: TextStyle(
                            color: appcolors.blue,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          'Sets',
                          style: TextStyle(
                            color: appcolors.white,
                            fontSize: 18,
                          ),
                        ),
                        fixwidth,
                        Text(
                          '17 ',
                          style: TextStyle(
                            color: appcolors.blue,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          'Min',
                          style: TextStyle(
                            color: appcolors.white,
                            fontSize: 18,
                          ),
                        ),
                        fixwidth,
                      ],
                    ),
                  ),
                ),
                fixheight,
                fixheight2,
                Text(
                  'Combine Exercises',
                  style: TextStyle(
                    color: appcolors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                fixheight2,
                Padding(
                  padding: EdgeInsets.only(left: 50.w),
                  child: Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.amber[800],
                        size: 18,
                      ),
                      fixwidth3,
                      Icon(
                        Icons.star,
                        color: Colors.amber[800],
                        size: 18,
                      ),
                      fixwidth3,
                      Icon(
                        Icons.star,
                        color: Colors.amber[800],
                        size: 18,
                      ),
                      fixwidth3,
                      Icon(
                        Icons.star,
                        color: Colors.amber[800],
                        size: 18,
                      ),
                      fixwidth3,
                      Icon(
                        Icons.star_border,
                        color: Colors.white,
                        size: 18,
                      ),
                    ],
                  ),
                ),
                fixheight2,
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
                          'Description',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Tab(
                        // text: 'Hard Workout',
                        child: Text(
                          'Feedback',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Tab(
                        // text: 'Full Body',
                        child: Text(
                          'Related',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                fixheight2,
                SizedBox(
                  height: 250,
                  child: TabBarView(children: [
                    Container(
                      height: 140.h,
                      width: double.infinity,
                      color: Colors.transparent,
                      child: Column(children: [
                        Text(
                          'You should always try to work out at least three times,'
                          ' Spaced out across the week, So you can get the maximum'
                          ' benefits. Therefore, anywhere from three to six workouts'
                          ' is ideal. I like to do six workouts a week on Monday Through'
                          ' Saturday, with a rest day on Sunday.\n'
                          'REST: Second of all, don\'t forgot the rest day.',
                          style: TextStyle(
                            color: Colors.grey[400],
                            fontSize: 13,
                          ),
                        ),
                        fixheight1,
                        Container(
                          height: 40.h,
                          width: 250.w,
                          decoration: BoxDecoration(
                            color: appcolors.blue,
                            border: Border.all(
                              width: 2,
                              color: Colors.grey,
                            ),
                            borderRadius: BorderRadius.circular(5.w),
                          ),
                          child: Center(
                            child: Text(
                              'Degin Train For \$3.5',
                              style: TextStyle(
                                color: appcolors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        fixheight,
                        Container(
                          height: 40.h,
                          width: 250.w,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            border: Border.all(
                              width: 2,
                              color: appcolors.blue,
                            ),
                            borderRadius: BorderRadius.circular(5.w),
                          ),
                          child: Center(
                            child: Text(
                              'Degin Train Demo',
                              style: TextStyle(
                                color: appcolors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ]),
                    ),
                    Container(
                      height: 100.h,
                      width: double.infinity,
                      color: Colors.red,
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.blueAccent,
                    ),
                  ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
