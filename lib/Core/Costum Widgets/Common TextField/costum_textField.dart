import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:email_validator/email_validator.dart';

class costum_txtField extends StatelessWidget {
  costum_txtField({
    Key? key,
    required this.email,
    required this.hintTxt,
    required this.icon,
    required this.icon2,
    required this.controller,
  }) : super(key: key);

  final RxBool email;
  final String hintTxt;
  final IconData icon;
  final IconData icon2;
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => TextFormField(
        controller: controller,
        onChanged: (asd) {
          if (EmailValidator.validate(asd)) {
            email(true);
          } else {
            email(false);
          }
        },
        style: const TextStyle(
          color: Colors.white,
        ),
        keyboardType: TextInputType.emailAddress,
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          fillColor: Colors.transparent,
          filled: true,
          isDense: true,
          contentPadding: EdgeInsets.symmetric(vertical: 20.h),
          prefixIcon: Icon(
            icon,
            color: Colors.grey,
            size: 20.sm,
            textDirection: TextDirection.ltr,
          ),
          hintText: 'Enter Your Email',
          hintStyle: const TextStyle(
            color: Colors.grey,
          ),
          suffixIcon: Icon(
            icon2,
            color: email.value ? Colors.green : Colors.grey,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 4.w,
              color: Colors.blue.withOpacity(0.8),
            ),
            borderRadius: BorderRadius.circular(15.sm),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
                width: 4.w,
                color: email.value
                    ? Colors.blue.withOpacity(0.8)
                    : Colors.red.withOpacity(0.8)),
            borderRadius: BorderRadius.circular(15.sm),
          ),
        ),
        cursorHeight: 23.h,
      ),
    );
  }
}

class costum_txtField2 extends StatefulWidget {
  String hintText;
  TextEditingController controller = TextEditingController();
  costum_txtField2({
    required this.hintText,
    required this.controller,
    super.key,
  });

  @override
  State<costum_txtField2> createState() => _costum_txtField2State();
}

class _costum_txtField2State extends State<costum_txtField2> {
  late bool _passwordVisible;

  @override
  void initState() {
    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      style: const TextStyle(
        color: Colors.white,
      ),
      obscureText: !_passwordVisible, //This will obscure text dynamically
      keyboardType: TextInputType.emailAddress,
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
        fillColor: Colors.transparent,
        filled: true,
        isDense: true,
        contentPadding: EdgeInsets.symmetric(vertical: 20.h),
        prefixIcon: Icon(
          Icons.lock,
          color: Colors.grey,
          size: 20.sm,
          textDirection: TextDirection.ltr,
        ),
        suffixIcon: IconButton(
          icon: Icon(
            // Based on passwordVisible state choose the icon
            _passwordVisible ? Icons.visibility : Icons.visibility_off,
            color: Colors.grey,
          ),
          onPressed: () {
            // Update the state i.e. toogle the state of passwordVisible variable
            setState(() {
              _passwordVisible = !_passwordVisible;
            });
          },
        ),
        hintText: widget.hintText,
        hintStyle: const TextStyle(
          color: Colors.grey,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide:
              BorderSide(width: 4.w, color: Colors.blue.withOpacity(0.8)),
          borderRadius: BorderRadius.circular(15.sm),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 4, color: Colors.blue.withOpacity(0.8)),
          borderRadius: BorderRadius.circular(15.sm),
        ),
      ),
      cursorHeight: 23.h,
    );
  }
}
