import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:power_zone/Core/Costum_Color/App%20Colors/app_colors.dart';

import 'UserAgreementScreen.dart';

class PrivacyPolicyScreen extends StatefulWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  State<PrivacyPolicyScreen> createState() => _PrivacyPolicyScreenState();
}

class _PrivacyPolicyScreenState extends State<PrivacyPolicyScreen> {
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
  }
}
