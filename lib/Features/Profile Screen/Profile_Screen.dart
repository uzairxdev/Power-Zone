import 'package:flutter/material.dart';
import 'package:power_zone/Core/Costum_Color/App%20Colors/app_colors.dart';
import 'package:power_zone/Features/Workout%20Screen/Workout_Screen.dart';
import 'package:power_zone/Features/SignUp%20Screen/SignUp_Screen.dart';
import 'package:power_zone/Features/Ultimate%20Women/UltimateWomen_Screen.dart';

import '../Workout Screen/bottomNavBar.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  Appcolors appcolors = Appcolors();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 19, 20, 41),
      body: Container(),
    );
  }
}
