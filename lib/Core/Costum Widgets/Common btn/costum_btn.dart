import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 15.sm,
      color: btnColor,
      borderRadius: BorderRadius.circular(
        15.sm,
      ),
      child: MaterialButton(
        height: 55.h,
        minWidth: 400.w,
        textColor: textColor,
        //disabledColor: Colors.grey,
        disabledTextColor: Colors.black,
        padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        //splashColor: Colors.grey,
        onPressed: onpressed,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 20.sm,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
