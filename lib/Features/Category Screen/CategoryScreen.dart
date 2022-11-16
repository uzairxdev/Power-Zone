import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:power_zone/Core/Costum_Color/App%20Colors/app_colors.dart';

class CategoryScreen extends StatefulWidget {
  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  Appcolors appcolors = Appcolors();
  bool click = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/back8.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 70.0),
                    child: Text(
                      "POWER  ",
                      style: GoogleFonts.bebasNeue(
                        fontSize: 36,
                        color: appcolors.white,
                        letterSpacing: 1.8,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 70.0),
                    child: Text(
                      "ZONE",
                      style: GoogleFonts.bebasNeue(
                        fontSize: 36,
                        color: appcolors.blue,
                        letterSpacing: 1.8,
                      ),
                    ),
                  ),
                ],
              ),
            ]),
      ),
    );
  }
}
