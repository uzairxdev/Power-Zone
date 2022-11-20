import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:power_zone/Core/Costum_Color/App%20Colors/app_colors.dart';

class costum_button extends StatelessWidget {
  costum_button({
    required this.text,
    required this.btnColor,
    required this.textColor,
    required this.onpressed,
    Key? key,
  }) : super(key: key);

  String text;
  Color textColor;
  Color btnColor;
  final VoidCallback onpressed;

  Appcolors appcolors = Appcolors();

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 15.sm,
      color: btnColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          15.sm,
        ),
        side: BorderSide(
          color: appcolors.blue,
          width: 2,
          style: BorderStyle.solid,
        ),
      ),
      child: MaterialButton(
        height: 55.h,
        minWidth: 400.w,
        textColor: textColor,
        disabledTextColor: Colors.black,
        padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        onPressed: onpressed,
        child: Text(
          text,
          style: GoogleFonts.alice(
            fontSize: 30.sm,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
