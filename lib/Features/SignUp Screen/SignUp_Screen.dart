import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';

import '../../Core/Costum Widgets/Common btn/costum_btn.dart';
import '../../Core/Costum Widgets/Common TextField/costum_textField.dart';
import '../../Core/Costum Widgets/Common TextButton/costum_textbutton.dart';
import '../../Core/Costum Widgets/Common Text/costum_txt.dart';
import '../../Core/Costum Widgets/Common SizedBox/costum_widgets.dart';
import '../../Core/Costum_Color/App Colors/app_colors.dart';
import '../Login Screen/Login_Screen.dart';
import '../Ultimate Women/UltimateWomen_Screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  var email = false.obs;
  TextEditingController EmailController = TextEditingController();
  TextEditingController PasswordController = TextEditingController();
  TextEditingController ConfirmPasswordController = TextEditingController();

  void clearText() {
    EmailController.clear();
    PasswordController.clear();
    ConfirmPasswordController.clear();
  }

  Appcolors appcolors = Appcolors();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'images/back6.jpg',
            ),
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.5), BlendMode.darken),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 150.h,
                    width: 250.w,
                    child: Image.asset(
                      "images/register.png",
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 230.w, bottom: 5.h),
                    child:
                        Costum_txt(text: 'Email', fontcolor: appcolors.white),
                  ),
                  costum_txtField(
                      controller: EmailController,
                      email: email,
                      hintTxt: 'Enter Your Email',
                      icon: Icons.email_outlined,
                      icon2: Icons.done),
                  fixheight,
                  Padding(
                    padding: EdgeInsets.only(right: 200.w, bottom: 5.h),
                    child: Costum_txt(
                        text: 'Password', fontcolor: appcolors.white),
                  ),
                  costum_txtField2(
                    controller: PasswordController,
                    hintText: 'Enter Your Password',
                  ),
                  fixheight,
                  Padding(
                    padding: EdgeInsets.only(right: 120.w, bottom: 5.h),
                    child: Costum_txt(
                        text: 'Confirm Password', fontcolor: appcolors.white),
                  ),
                  costum_txtField2(
                    controller: ConfirmPasswordController,
                    hintText: 'Confirm Password',
                  ),
                  fixheight,
                  costum_button(
                    text: 'Sign Up',
                    btnColor: appcolors.blue,
                    textColor: Colors.white,
                    onpressed: () async {
                      //
                      var email = EmailController.text.trim();
                      var password = PasswordController.text.trim();
                      var confirmPassword =
                          ConfirmPasswordController.text.trim();

                      if (email.isEmpty ||
                          password.isEmpty ||
                          confirmPassword.isEmpty) {
                        // show erroe toast
                        costumSnackbar('Warning', "Please fill all the fields");
                        return;
                      }
                      if (password.length < 8) {
                        // show error toast
                        costumSnackbar(
                            'Password Error', 'Weak Password Make it Strong');

                        return;
                      }
                      if (password != confirmPassword) {
                        // show error toast
                        costumSnackbar("Warning", "Passwords does not match");

                        return;
                      }

                      //Progress bar
                      QuickAlert.show(
                        context: context,
                        type: QuickAlertType.loading,
                        title: 'Loading .....',
                        titleColor: Colors.white,
                        backgroundColor: Colors.grey.shade700,
                        text: 'Fetching Your Data',
                        textColor: appcolors.white,
                      );

                      // request to firebase auth
                      try {
                        FirebaseAuth auth = FirebaseAuth.instance;

                        UserCredential userCredential =
                            await auth.createUserWithEmailAndPassword(
                                email: email, password: password);

                        FirebaseFirestore.instance
                            .collection('userCredential')
                            .doc(userCredential.user!.uid)
                            .set({
                          'user_Id': userCredential.user!.uid,
                          'email': email,
                          'password': password,
                          'confirmPassword': confirmPassword,
                        });
                      } on FirebaseAuthException catch (e) {
                        if (e.code == 'email-already-in-use') {
                          Navigator.of(context).pop();
                          Get.snackbar(
                            "Email Error",
                            "Email is already in use",
                            colorText: Colors.white,
                            icon: Icon(
                              Icons.warning_amber,
                              color: Colors.white,
                            ),
                          );
                          return;
                        } else if (e.code == 'weak-password') {
                          Navigator.of(context).pop();
                          Get.snackbar(
                            "Wrong Password",
                            "weak password make it strong",
                            colorText: Colors.white,
                            icon: Icon(
                              Icons.warning_amber,
                              color: Colors.white,
                            ),
                          );
                          return;
                        }
                      } catch (e) {
                        Navigator.of(context).pop();
                        QuickAlert.show(
                          context: context,
                          type: QuickAlertType.error,
                          titleColor: Colors.white,
                          backgroundColor: Colors.grey.shade700,
                          textColor: appcolors.white,
                        );
                        return;
                      }

                      Get.to(
                          // Go to Home Screen
                          UtlimateWomenScreen());
                      clearText();
                      QuickAlert.show(
                        context: context,
                        type: QuickAlertType.success,
                        title: "Successfully Rigesterd",
                        backgroundColor: Colors.grey.shade700,
                        titleColor: Colors.white,
                      );
                    },
                  ),
                  fixheight3,
                  Row(
                    children: [
                      Text(
                        'Already have an Account?',
                        style: TextStyle(
                          color: appcolors.white,
                          fontSize: 18.sm,
                        ),
                      ),
                      fixwidth,
                      costum_textbutton(
                        name: 'Sign In',
                        fontsize: 18.sm,
                        txtColor: appcolors.white,
                        decoration: TextDecoration.underline,
                        onpressed: () {
                          Get.to(
                            LoginScreen(),
                          );
                        },
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  SnackbarController costumSnackbar(String title, String message) {
    return Get.snackbar(
      title,
      message,
      colorText: Colors.white,
      icon: Icon(
        Icons.warning_amber,
        color: Colors.white,
      ),
    );
  }
}
