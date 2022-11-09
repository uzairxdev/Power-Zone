import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Core/Costum_Color/App Colors/app_colors.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  Appcolors appcolors = Appcolors();
  int count = 0;
  void Count() {
    setState(() {
      count++;
    });
  }

  void MCount() {
    if (count > 0)
      setState(() {
        count--;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          borderRadius: BorderRadius.circular(100),
          onTap: () {
            MCount();
          },
          child: Container(
            height: 60.h,
            width: 65.w,
            decoration: BoxDecoration(
                color: appcolors.blue,
                borderRadius: BorderRadius.circular(100.r)),
            child: Center(
                child: Padding(
              padding: EdgeInsets.only(bottom: 30.h),
              child: Icon(
                Icons.minimize,
                color: Colors.white,
                size: 45,
              ),
            )),
          ),
        ),
        SizedBox(
          width: 50.w,
        ),
        Text(
          '$count',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          width: 50.w,
        ),
        InkWell(
          borderRadius: BorderRadius.circular(100),
          onTap: () {
            Count();
          },
          child: Container(
            height: 60.h,
            width: 65.w,
            decoration: BoxDecoration(
                color: appcolors.blue,
                borderRadius: BorderRadius.circular(100.r)),
            child: Center(
                child: Icon(
              Icons.add,
              color: Colors.white,
              size: 30,
            )),
          ),
        ),
      ],
    );
  }
}
