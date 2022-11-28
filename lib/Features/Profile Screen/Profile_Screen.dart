import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:power_zone/Core/Costum%20Widgets/Common%20SizedBox/costum_widgets.dart';
import 'package:power_zone/Features/Landing%20Screen/Landing_Screen.dart';
import 'package:power_zone/Features/Profile%20Screen/ProfileEditScreen.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../Core/Costum_Color/App Colors/app_colors.dart';

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
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Container(
            height: 140.h,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 33, 33, 51),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(30.r),
                bottomLeft: Radius.circular(30.r),
              ),
              boxShadow: [
                BoxShadow(
                  blurRadius: 20,
                  color: Colors.white.withOpacity(0.3),
                )
              ],
            ),
            child: Padding(
              padding: EdgeInsets.only(
                left: 25.w,
                right: 25.w,
                top: 25.h,
              ),
              child: Row(
                children: [
                  Container(
                    width: 55.w,
                    height: 55.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40.0),
                      border: Border.all(
                        width: 3.w,
                        color: appcolors.blue,
                      ),
                      image: const DecorationImage(
                        image: AssetImage("images/my.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  fixwidth,
                  Text(
                    'Muhammad Uzair',
                    style: GoogleFonts.alike(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  fixwidth,
                  fixwidth,
                  Container(
                    height: 45.h,
                    width: 45.w,
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
                        Get.to(ProfileEditScreen());
                      },
                      icon: Icon(
                        Icons.mode_edit_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          fixheight,
          Container(
            height: 210.h,
            width: 330.w,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 27, 27, 52),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 10.h),
              child: Column(
                children: [
                  CostumDetails(
                      icon: Icons.email_outlined,
                      text1: 'Email',
                      text2: 'uzairdev2@flutter.com',
                      appcolors: appcolors),
                  fixheight3,
                  Divider(
                    color: Colors.grey[700],
                  ),
                  fixheight3,
                  CostumDetails(
                      icon: Icons.phone_outlined,
                      text1: 'Phone',
                      text2: '+92 317 096 73 85',
                      appcolors: appcolors),
                  fixheight3,
                  Divider(
                    color: Colors.grey[700],
                  ),
                  fixheight3,
                  CostumDetails(
                      icon: Icons.calendar_month_outlined,
                      text1: 'Date Of Birth',
                      text2: 'Friday, 05 April 2002',
                      appcolors: appcolors)
                ],
              ),
            ),
          ),
          fixheight,
          Container(
            height: 160.h,
            width: 330.w,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 27, 27, 52),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 10.h),
              child: Column(
                children: [
                  CostumDetails2(
                    icon: Icons.badge_outlined,
                    text: 'Invite Friends     ',
                    onpressed: () {},
                  ),
                  fixheight3,
                  Divider(
                    color: Colors.grey[700],
                  ),
                  fixheight3,
                  CostumDetails2(
                    icon: Icons.supervised_user_circle_outlined,
                    text: 'User Agreement',
                    onpressed: () {},
                  ),
                  fixheight3,
                  Divider(
                    color: Colors.grey[700],
                  ),
                  fixheight3,
                  CostumDetails2(
                    icon: Icons.settings_outlined,
                    text: 'Settings               ',
                    onpressed: () {},
                  ),
                ],
              ),
            ),
          ),
          fixheight,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Material(
              elevation: 15.sm,
              color: Colors.red[300],
              borderRadius: BorderRadius.circular(
                15.sm,
              ),
              child: MaterialButton(
                  height: 55.h,
                  minWidth: 200.w,
                  textColor: Colors.white,
                  //disabledColor: Colors.grey,
                  disabledTextColor: Colors.black,
                  padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                  //splashColor: Colors.grey,
                  onPressed: () {
                    QuickAlert.show(
                      context: context,
                      type: QuickAlertType.confirm,
                      text: 'Do you want to logout',
                      confirmBtnText: 'Yes',
                      cancelBtnText: 'No',
                      confirmBtnColor: Colors.red,
                      onConfirmBtnTap: () async {
                        final SharedPreferences sharedPreferences =
                            await SharedPreferences.getInstance();
                        sharedPreferences.remove('Email');
                        Get.to(LandingScreen());
                      },
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.power_settings_new_outlined,
                        color: Colors.white,
                        size: 40.sm,
                      ),
                      fixwidth,
                      Text(
                        'SIGN OUT',
                        style: GoogleFonts.alike(
                          color: Colors.white,
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  )),
            ),
          ),
        ],
      ),
    );
  }
}

///////////////////////////////////////////////////////////////////////////////

class CostumDetails2 extends StatelessWidget {
  const CostumDetails2({
    required this.icon,
    required this.text,
    required this.onpressed,
    Key? key,
  }) : super(key: key);

  final String text;
  final IconData icon;
  final VoidCallback onpressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: Colors.white,
          size: 35,
        ),
        fixwidth,
        Text(
          text,
          style: GoogleFonts.alike(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          width: 40.w,
        ),
        Icon(
          Icons.arrow_forward_ios_outlined,
          color: Colors.white,
          size: 25,
        )
      ],
    );
  }
}

//////////////////////////////////////////////////////////

class CostumDetails extends StatelessWidget {
  const CostumDetails({
    Key? key,
    required this.icon,
    required this.text1,
    required this.text2,
    required this.appcolors,
  }) : super(key: key);

  final Appcolors appcolors;
  final IconData icon;
  final String text1;
  final String text2;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: Colors.white,
          size: 35,
        ),
        fixwidth,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text1,
              style: GoogleFonts.alike(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            Text(
              text2,
              style: GoogleFonts.alike(
                  color: appcolors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.bold),
            )
          ],
        )
      ],
    );
  }
}
