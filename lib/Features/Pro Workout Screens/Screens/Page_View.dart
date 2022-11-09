import 'package:flutter/material.dart';
import 'package:power_zone/Features/Pro%20Workout%20Screens/Screens/10th_Screen.dart';
import 'package:power_zone/Features/Pro%20Workout%20Screens/Screens/1st_Screen.dart';
import 'package:power_zone/Features/Pro%20Workout%20Screens/Screens/2nd_Screen.dart';
import 'package:power_zone/Features/Pro%20Workout%20Screens/Screens/3rd_Screen.dart';
import 'package:power_zone/Features/Pro%20Workout%20Screens/Screens/4th_Screen.dart';
import 'package:power_zone/Features/Pro%20Workout%20Screens/Screens/5th_Screen.dart';
import 'package:power_zone/Features/Pro%20Workout%20Screens/Screens/6th_Screen.dart';
import 'package:power_zone/Features/Pro%20Workout%20Screens/Screens/7th_Screen.dart';
import 'package:power_zone/Features/Pro%20Workout%20Screens/Screens/8th_Screen.dart';
import 'package:power_zone/Features/Pro%20Workout%20Screens/Screens/9th_Screen.dart';

class ViewPage extends StatefulWidget {
  @override
  _ViewPageState createState() => _ViewPageState();
}

class _ViewPageState extends State<ViewPage> {
  PageController controller = PageController();

  int _curr = 0;

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        FirstScreen(),
        SecondScreen(),
        ThirdScreen(),
        FourthScreen(),
        FifthScreen(),
        SixthScreen(),
        SeventhScreen(),
        EightScreen(),
        NinthScreen(),
        TenthScreen(),
      ],
      scrollDirection: Axis.horizontal,

      // reverse: true,
      // physics: BouncingScrollPhysics(),
      controller: controller,
      onPageChanged: (num) {
        setState(() {
          _curr = num;
        });
      },
    );
  }
}
