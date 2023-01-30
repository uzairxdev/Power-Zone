import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Costum_txt extends StatelessWidget {
  Costum_txt({
    required this.text,
    required this.fontcolor,
    this.size,
    Key? key,
  }) : super(key: key);

  final String text;
  Color fontcolor;
  final double? size;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.alike(
        fontSize: size ?? 21.sm,
        fontWeight: FontWeight.bold,
        color: fontcolor,
      ),
    );
  }
}
