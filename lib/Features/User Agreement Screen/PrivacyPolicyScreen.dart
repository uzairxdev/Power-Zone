import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:power_zone/Core/Costum%20Widgets/Common%20SizedBox/costum_widgets.dart';
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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
          child: Container(
            height: 660.h,
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
                  Text('Privacy Policy',
                      style: GoogleFonts.alike(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      )),
                  fixheight2,
                  CostumText(
                      text:
                          'Coding Your Life built the Workout app as a Freemium app '
                          'and an Ad Supported app. This SERVICE is provided by Coding'
                          ' Your Life at no cost and is intended for use as is.'),
                  fixheight2,
                  CostumText(
                    text:
                        'This page is used to inform visitors regarding our policies '
                        'with the collection, use, and disclosure of Personal Information '
                        'if anyone decided to use our Service.',
                  ),
                  fixheight2,
                  CostumText(
                      text:
                          'If you choose to use our Service, then you agree to the '
                          'collection and use of information in relation to this policy. '
                          'The Personal Information that we collect is used for providing '
                          'and improving the Service. We will not use or share your information '
                          'with anyone except as described in this Privacy Policy.'),
                  fixheight2,
                  CostumText(
                      text:
                          'The terms used in this Privacy Policy have the same '
                          'meanings as in our Terms and Conditions, which is accessible at Workout '
                          'unless otherwise defined in this Privacy Policy.'),
                  fixheight2,
                  CostumText(
                      text:
                          'Information Collection and Use For a better experience, '
                          'while using our Service, we may require you to provide us with certain '
                          'personally identifiable information, including but not limited to Name, '
                          'Email, Phone Number, Date of Birth, Address, Photos, Body Height, Body '
                          'Weight, Size of Clothes, Size of Pants, Size of Shoes, Skill, Experience, '
                          'and Hobby. The information that we request will be retained by us and used '
                          'as described in this privacy policy.'),
                  fixheight2,
                  CostumText(
                      text:
                          'The app does use third party services that may collect '
                          'information used to identify you.'),
                  fixheight2,
                  CostumText(
                      text:
                          'Link to privacy policy of third party service providers '
                          'used by the app'),
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

class CostumText extends StatelessWidget {
  CostumText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;
  Appcolors appcolors = Appcolors();
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: appcolors.white),
    );
  }
}
