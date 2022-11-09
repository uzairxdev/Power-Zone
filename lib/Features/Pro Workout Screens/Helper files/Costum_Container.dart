import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CostumContainer extends StatelessWidget {
  CostumContainer({
    required this.color,
    Key? key,
  }) : super(key: key);

  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5.h,
      width: 25.w,
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(10.r)),
    );
  }
}
