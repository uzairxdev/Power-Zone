import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/retry.dart';
import 'package:power_zone/Core/Costum%20Widgets/Common%20SizedBox/costum_widgets.dart';

import '../../Core/Costum_Color/App Colors/app_colors.dart';
import '../../Core/Model/model.dart';

class StoreScreen extends StatefulWidget {
  @override
  _StoreScreenState createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {
  Appcolors appcolors = Appcolors();
  @override
  Widget build(BuildContext context) {
    return Container(
      //This Container is used for the background image
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/back3.png"),
          colorFilter:
              ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.darken),
          fit: BoxFit.cover,
        ),
      ),
      //Start Scaffold Widget
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        body: Column(
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
                      "STORE",
                      style: GoogleFonts.bebasNeue(
                        fontSize: 36,
                        color: appcolors.blue,
                        letterSpacing: 1.8,
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: GridView.builder(
                    itemCount: E_Store_List.length,
                    // padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 70),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 2,
                      mainAxisExtent: 230,
                    ),
                    itemBuilder: (context, index) {
                      var data = E_Store_List[index];
                      return InkWell(
                        borderRadius: BorderRadius.circular(20.r),
                        onTap: () {},
                        child: Padding(
                          padding: EdgeInsets.all(5.sp),
                          child: Card(
                            elevation: 10,
                            color: Color(0xFF232441),
                            shadowColor: Colors.grey,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadiusDirectional.circular(20.r)),
                            child: Padding(
                              padding: EdgeInsets.all(6.sp),
                              child: Center(
                                child: Column(children: [
                                  SizedBox(
                                    width: 150,
                                    height: 90,
                                    child: Image.asset(
                                      data.Image!,
                                    ),
                                  ),
                                  fixheight1,
                                  Row(
                                    children: [
                                      Text(
                                        data.Price!,
                                        style: GoogleFonts.alike(
                                          fontSize: 16,
                                          color: appcolors.white,
                                        ),
                                      ),
                                      fixwidth3,
                                      Text(
                                        data.disPrice!,
                                        style: TextStyle(
                                          color: Colors.grey[700],
                                          fontSize: 13,
                                          decoration:
                                              TextDecoration.lineThrough,
                                        ),
                                      )
                                    ],
                                  ),
                                  fixheight1,
                                  Center(
                                    child: Text(
                                      data.Sub_name!,
                                      style: GoogleFonts.alike(
                                        fontSize: 20,
                                        color: appcolors.white,
                                      ),
                                    ),
                                  ),
                                ]),
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            ]),
      ),
    );
  }
}
