import 'package:flutter/material.dart';

class CostumTxtFormField extends StatelessWidget {
  const CostumTxtFormField({
    required this.hinText,
    Key? key,
  }) : super(key: key);

  final String hinText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(
        color: Colors.white,
      ),
      decoration: InputDecoration(
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        hintText: hinText,
        hintStyle: TextStyle(
          color: Colors.grey,
          fontSize: 12,
        ),
      ),
    );
  }
}
