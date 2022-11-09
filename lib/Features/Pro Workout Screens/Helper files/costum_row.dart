import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Core/Costum_Color/App Colors/app_colors.dart';

class CostumRow extends StatelessWidget {
  CostumRow({
    Key? key,
    required this.appcolors,
    required this.text,
  }) : super(key: key);

  final Appcolors appcolors;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      // here is use the divider
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 60.w),
            child: Divider(
              color: appcolors.white,
              height: 40.h,
              thickness: 1.5,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10.w, right: 10.w),
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(right: 60.w),
            child: Divider(
              color: appcolors.white,
              height: 40.h,
              thickness: 1.5,
            ),
          ),
        ),
      ],
    );
  }
}
