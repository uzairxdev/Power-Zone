import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Core/Costum Widgets/Common Text/costum_txt.dart';
import '../../../Core/Costum_Color/App Colors/app_colors.dart';
import 'Costum_Txt_FormField.dart';

class CostumListTile extends StatelessWidget {
  CostumListTile({
    Key? key,
    required this.text,
    required this.hintText,
  }) : super(key: key);

  Appcolors appcolors = Appcolors();

  final String text;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Costum_txt(
        text: text,
        size: 20.sm,
        fontcolor: appcolors.blue,
      ),
      subtitle: CostumTxtFormField(hinText: hintText),
    );
  }
}
