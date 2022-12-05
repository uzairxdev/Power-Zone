import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quickalert/quickalert.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../Core/Costum Widgets/Common btn/costum_btn.dart';
import '../../Core/Costum Widgets/Common TextField/costum_textField.dart';
import '../../Core/Costum Widgets/Common TextButton/costum_textbutton.dart';
import '../../Core/Costum Widgets/Common Text/costum_txt.dart';
import '../../Core/Costum Widgets/Common SizedBox/costum_widgets.dart';
import '../../Core/Costum_Color/App Colors/app_colors.dart';
import '../Forgotten Password/ForgotPass_Screen.dart';
import '../Ultimate Women/UltimateWomen_Screen.dart';
import '../SignUp Screen/SignUp_Screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var email = false.obs;
  var emailcontroller = TextEditingController();
  var passwordcontroller = TextEditingController();

  Appcolors appcolors = Appcolors();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'images/back1.jpg',
          ),
          colorFilter:
              ColorFilter.mode(Colors.black.withOpacity(0.6), BlendMode.darken),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 35),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 150.h,
                  width: 250.w,
                  child: Image.asset("images/login.png"),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 240.w, bottom: 5.h),
                  child: Costum_txt(
                    text: 'Email',
                    fontcolor: appcolors.white,
                  ),
                ),
                costum_txtField(
                  controller: emailcontroller,
                  email: email,
                  hintTxt: 'Enter Your Emial',
                  icon: Icons.email_outlined,
                  icon2: Icons.done,
                ),
                fixheight,
                Padding(
                  padding: EdgeInsets.only(right: 200.w, bottom: 5.h),
                  child: Costum_txt(
                    text: 'Password',
                    fontcolor: appcolors.white,
                  ),
                ),
                costum_txtField2(
                  controller: passwordcontroller,
                  hintText: 'Enter Your Password',
                ),
                fixheight,
                costum_button(
                  text: 'Sign in',
                  btnColor: appcolors.blue,
                  textColor: Colors.white,
                  onpressed: () async {
                    var Email = emailcontroller.text.trim();
                    var Password = passwordcontroller.text.trim();

                    if (Email.isEmpty || Password.isEmpty) {
                      // show error toast
                      Get.snackbar(
                        'Empty Fields',
                        "Please Enter Email and Password",
                        colorText: Colors.white,
                        icon: Icon(
                          Icons.warning_amber,
                          color: Colors.white,
                        ),
                      );
                      return;
                    }
                    if (Password.length < 8) {
                      // show error toast
                      Get.snackbar(
                        'Password',
                        'Please Enter The Correct Password',
                        colorText: Colors.white,
                        icon: Icon(
                          Icons.warning_amber,
                          color: Colors.white,
                        ),
                      );
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
                          await auth.signInWithEmailAndPassword(
                              email: Email, password: Password);

                      if (userCredential.user != null) {
                        Navigator.of(context).pop();

                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) {
                              return UtlimateWomenScreen();
                            },
                          ),
                        );
                      } else {
                        Get.snackbar(
                          "Some Error",
                          "User Not Found",
                          colorText: Colors.white,
                          icon: Icon(
                            Icons.warning_amber,
                            color: Colors.white,
                          ),
                        );
                      }
                    } on FirebaseAuthException catch (e) {
                      Navigator.of(context).pop();
                      if (e.code == 'user-not-found') {
                        Get.snackbar(
                          "Some Error",
                          "User Not Found",
                          colorText: Colors.white,
                          icon: Icon(
                            Icons.warning_amber,
                            color: Colors.white,
                          ),
                        );
                        return;
                      } else if (e.code == 'wrong-password') {
                        Get.snackbar(
                          "Wrong Password",
                          "Make Sure Password is correct",
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
                      Get.snackbar(
                        "Erorr Found",
                        "Something went wrong",
                        colorText: Colors.white,
                        icon: Icon(
                          Icons.warning_amber,
                          color: Colors.white,
                        ),
                      );
                      return;
                    }

                    final SharedPreferences sharedPreferences =
                        await SharedPreferences.getInstance();
                    sharedPreferences.setString('Email', Email);

                    QuickAlert.show(
                      context: context,
                      type: QuickAlertType.success,
                      title: "Successfully Login",
                      backgroundColor: Colors.grey.shade700,
                      titleColor: Colors.white,
                    );
                  },
                ),
                fixheight,
                Row(
                  children: [
                    costum_textbutton(
                      name: 'Forgotten password?',
                      fontsize: 18,
                      txtColor: appcolors.white,
                      decoration: TextDecoration.underline,
                      onpressed: () {
                        Get.to(ForgotPassScreen());
                      },
                    ),
                    fixwidth,
                    fixwidth,
                    costum_textbutton(
                      name: 'Sign Up',
                      fontsize: 18,
                      txtColor: appcolors.white,
                      decoration: TextDecoration.underline,
                      onpressed: () {
                        Get.to(
                          SignUpScreen(),
                        );
                      },
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
