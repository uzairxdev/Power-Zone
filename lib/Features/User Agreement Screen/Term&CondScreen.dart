import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:power_zone/Core/Costum_Color/App%20Colors/app_colors.dart';

import '../../Core/Costum Widgets/Common SizedBox/costum_widgets.dart';
import 'PrivacyPolicyScreen.dart';
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
          text: 'Term & Condition',
        ),
        preferredSize: Size.fromHeight(60),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
          child: Container(
            height: 665.h,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 27, 27, 52),
              borderRadius: BorderRadius.circular(10.sp),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 15.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Terms & Conditions",
                      style: GoogleFonts.alike(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      )),
                  fixheight2,
                  CostumText(
                      text: "By downloading or using the app, these terms will "
                          "automatically apply to you - you should make sure therefore that "
                          "you read them carefully before using the app. You're not allowed to copy, "
                          "or modify the app, any part of the app, or our trademarks in any way. "
                          "You're not allowed to attempt to extract the source code of the app, "
                          "and you also shouldn't try to translate the app into other languages, "
                          "or make derivative versions. The app itself, and all the trade marks, "
                          "copyright, database rights and other intellectual property rights related "
                          "to it, still belong to Coding Your Life."),
                  fixheight2,
                  CostumText(
                      text:
                          "Coding Your Life is committed to ensuring that the app is as useful "
                          "and efficient as possible. For that reason, we reserve the right to make changes to "
                          "the app or to charge for its services, at any time and for any reason. We will never "
                          "charge you for the app or its services without making it very clear to you exactly "
                          "what you're paying for."),
                  fixheight2,
                  CostumText(
                      text:
                          "The Workout app stores and processes personal data that you have "
                          "provided to us, in order to provide our Service. It's your responsibility to keep "
                          "your phone and access to the app secure. We therefore recommend that you do not "
                          "jailbreak or root your phone, which is the process of removing software restrictions "
                          "and limitations imposed by the official operating system of your device. It could "
                          "make your phone vulnerable to malware/viruses/malicious programs, compromise your "
                          "phone's security features and it could mean that the Workout app won't work properly "
                          "or at all."),
                  fixheight2,
                  CostumText(
                      text:
                          "The app does use third party services that declare their own Terms and Conditions."),
                  fixheight2,
                  CostumText(
                      text:
                          "Link to Terms and Conditions of third party service providers used by the app."),
                  fixheight2,
                  Text(
                    'Google Play Services',
                    style: TextStyle(
                      color: appcolors.blue,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  fixheight3,
                  Text(
                    'Admob',
                    style: TextStyle(
                      color: appcolors.blue,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  fixheight3,
                  Text(
                    'Google Analytics for Firebase',
                    style: TextStyle(
                      color: appcolors.blue,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
