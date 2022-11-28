import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/country_picker_dialog.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../Core/Costum Widgets/Common SizedBox/costum_widgets.dart';
import '../../Core/Costum Widgets/Common TextButton/costum_textbutton.dart';
import '../../Core/Costum_Color/App Colors/app_colors.dart';
import 'Profile_Screen.dart';

class ProfileEditScreen extends StatefulWidget {
  const ProfileEditScreen({super.key});

  @override
  State<ProfileEditScreen> createState() => _ProfileEditScreenState();
}

class _ProfileEditScreenState extends State<ProfileEditScreen> {
  Appcolors appcolors = Appcolors();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 19, 20, 41),
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Container(
            height: 250.h,
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
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
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
                            Get.back();
                          },
                          icon: Icon(
                            Icons.arrow_back_ios_new,
                            color: Colors.white,
                            size: 27,
                          ),
                        ),
                      ),
                      SizedBox(width: 65.w),
                      Text(
                        'Edit Profile',
                        style: GoogleFonts.alike(
                          color: appcolors.blue,
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 110.w,
                    height: 100.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(200.0),
                      image: const DecorationImage(
                        image: AssetImage("images/my.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  costum_textbutton(
                    name: 'Change Profile Picture',
                    fontsize: 23,
                    txtColor: appcolors.blue,
                    onpressed: () {},
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 15.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: ListTile(
                        title: Text(
                          'First Name',
                          style: GoogleFonts.alike(
                            color: appcolors.blue,
                            fontSize: 20,
                          ),
                        ),
                        subtitle: TextFormField(
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            hintText: 'Enter First Name',
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListTile(
                        title: Text(
                          'Last Name',
                          style: GoogleFonts.alike(
                            color: appcolors.blue,
                            fontSize: 20,
                          ),
                        ),
                        subtitle: TextFormField(
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            hintText: 'Enter Last Name',
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                fixheight2,
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  child: Text(
                    'Username',
                    style: GoogleFonts.alike(
                      color: appcolors.blue,
                      fontSize: 20,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  child: TextFormField(
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      hintText: 'Enter Your Username',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
                fixheight2,
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  child: Text(
                    'Phone Number',
                    style: GoogleFonts.alike(
                      color: appcolors.blue,
                      fontSize: 20,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  child: IntlPhoneField(
                    keyboardType: TextInputType.phone,
                    pickerDialogStyle: PickerDialogStyle(
                      backgroundColor: Color.fromARGB(255, 19, 20, 41),
                      countryCodeStyle: TextStyle(
                        color: Colors.white,
                      ),
                      countryNameStyle: TextStyle(
                        color: Colors.white,
                      ),
                      searchFieldCursorColor: Colors.white,
                      listTileDivider: Divider(
                        color: Colors.white,
                      ),
                      searchFieldInputDecoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        hintText: 'Search Country Code',
                        hintStyle: TextStyle(
                          color: Colors.white,
                        ),
                        suffixIcon: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 30.w),
                    ),
                    dropdownTextStyle: TextStyle(
                      color: Colors.white,
                    ),
                    dropdownIcon: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      hintText: 'Phone Number',
                      hintStyle: TextStyle(color: Colors.grey),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                    initialCountryCode: 'IN',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    onChanged: (phone) {
                      print(phone.completeNumber);
                    },
                  ),
                ),
                fixheight2,
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: ListTile(
                        title: Text(
                          'Date of Birth',
                          style: GoogleFonts.alike(
                            color: appcolors.blue,
                            fontSize: 20,
                          ),
                        ),
                        subtitle: TextFormField(
                          keyboardType: TextInputType.number,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            hintText: 'E.g: 17-8-200',
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListTile(
                        title: Text(
                          'Gender',
                          style: GoogleFonts.alike(
                            color: appcolors.blue,
                            fontSize: 20,
                          ),
                        ),
                        subtitle: TextFormField(
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            hintText: 'E.g: Male',
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: InkWell(
                    onTap: () {
                      Get.to(ProfileScreen());
                    },
                    child: Container(
                      height: 50.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 32, 32, 57),
                        borderRadius: BorderRadius.circular(15.r),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 15.w, vertical: 7.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Save Profile',
                              style: GoogleFonts.alike(
                                color: appcolors.white,
                                fontSize: 26.sm,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Container(
                              height: 45.h,
                              width: 45.w,
                              decoration: BoxDecoration(
                                color: appcolors.white,
                                border: Border.all(
                                  width: 1.w,
                                  color: Colors.white,
                                ),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.black,
                                size: 27,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
