import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:power_zone/Core/Costum%20Widgets/Common%20SizedBox/costum_widgets.dart';
import 'package:power_zone/Core/Costum_Color/App%20Colors/app_colors.dart';
import 'package:power_zone/Features/User%20Agreement%20Screen/PrivacyPolicyScreen.dart';
import 'package:power_zone/Features/User%20Agreement%20Screen/Term&CondScreen.dart';

import '../Profile Screen/Profile_Screen.dart';

class UserAgreementScreen extends StatefulWidget {
  const UserAgreementScreen({super.key});

  @override
  State<UserAgreementScreen> createState() => _UserAgreementScreenState();
}

class _UserAgreementScreenState extends State<UserAgreementScreen> {
  Appcolors appcolors = Appcolors();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 19, 20, 41),
      appBar: PreferredSize(
        child: CostumAppBar(
          appcolors: appcolors,
          text: 'User Agreement',
        ),
        preferredSize: Size.fromHeight(60),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
        child: Container(
          height: 110.h,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 27, 27, 52),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 10.h),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Get.to(PrivacyPolicyScreen());
                  },
                  child: CostumDetails2(
                    icon: Icons.privacy_tip_outlined,
                    text: 'Privacy Policy\t\t\t\t\t\t\t\t',
                  ),
                ),
                fixheight3,
                Divider(
                  color: Colors.grey[700],
                ),
                fixheight3,
                InkWell(
                  onTap: () {
                    Get.to(TermCondScreen());
                  },
                  child: CostumDetails2(
                    icon: Icons.document_scanner_outlined,
                    text: 'Term & Conditions',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CostumAppBar extends StatelessWidget {
  const CostumAppBar({
    Key? key,
    required this.appcolors,
    required this.text,
  }) : super(key: key);

  final Appcolors appcolors;
  final String text;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color.fromARGB(255, 27, 27, 52),
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 38.h,
          width: 38.w,
          decoration: BoxDecoration(
            color: Colors.transparent,
            border: Border.all(
              width: 1.w,
              color: Colors.white,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          child: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
              size: 23,
            ),
          ),
        ),
      ),
      title: Text(
        text,
        style: GoogleFonts.alike(
          color: appcolors.blue,
          fontSize: 23,
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
    );
  }
}
