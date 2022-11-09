import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class button extends StatelessWidget {
  button({
    required this.text,
    required this.textColor,
    required this.onpressed,
    Key? key,
  }) : super(key: key);

  String text;
  Color textColor;
  final VoidCallback onpressed;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 15.sm,
      color: Color.fromARGB(255, 35, 99, 151),
      borderRadius: BorderRadius.circular(
        35.sm,
      ),
      child: MaterialButton(
        height: 25.h,
        minWidth: 300.w,
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
