import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class costum_textbutton extends StatelessWidget {
  costum_textbutton({
    required this.name,
    required this.fontsize,
    required this.txtColor,
    required this.onpressed,
    this.decoration,
    Key? key,
  }) : super(key: key);

  String name;
  double fontsize;
  Color txtColor;
  final VoidCallback onpressed;
  TextDecoration? decoration;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      autofocus: true,
      onPressed: onpressed,
      child: Text(
        name,
        style: GoogleFonts.lato(
          fontSize: fontsize,
          fontWeight: FontWeight.bold,
          color: txtColor,
          decoration: decoration,
        ),
      ),
    );
  }
}
