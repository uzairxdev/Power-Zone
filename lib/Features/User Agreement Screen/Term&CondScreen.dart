import 'package:flutter/material.dart';
import 'package:power_zone/Core/Costum_Color/App%20Colors/app_colors.dart';

import 'UserAgreementScreen.dart';

class TermCondScreen extends StatefulWidget {
  const TermCondScreen({super.key});

  @override
  State<TermCondScreen> createState() => _TermCondScreenState();
}

class _TermCondScreenState extends State<TermCondScreen> {
  Appcolors appcolors = Appcolors();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 19, 20, 41),
      appBar: PreferredSize(
        child: CostumAppBar(
          appcolors: appcolors,
          text: 'Privacy Policy',
        ),
        preferredSize: Size.fromHeight(60),
      ),
    );
    ;
  }
}
