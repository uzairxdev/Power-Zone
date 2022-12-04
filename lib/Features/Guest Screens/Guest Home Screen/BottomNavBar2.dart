import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'GuestHomeScreen.dart';
import 'Workout_Guest_Screen.dart';

class BottomNavBar2 extends StatefulWidget {
  @override
  _BottomNavBar2State createState() => _BottomNavBar2State();
}

class _BottomNavBar2State extends State<BottomNavBar2> {
  int _selectedIndex = 0;

  static List<dynamic> _widgetOptions = <dynamic>[
    WorkoutguestScreen(),
    GuestHomeScreen(),
    GuestHomeScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.transparent,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        alignment: Alignment.bottomCenter,
        height: 55.h,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 19, 20, 41),
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(0.9),
            )
          ],
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
          child: GNav(
            gap: 10,
            backgroundColor: Color.fromARGB(255, 19, 20, 41),
            color: Colors.grey,
            activeColor: Colors.blue.withOpacity(0.8),
            tabBackgroundColor: Colors.grey.shade800,
            padding: EdgeInsets.all(16),
            iconSize: 26,
            hoverColor: Colors.blue.withOpacity(0.5),
            tabs: [
              GButton(
                icon: Icons.fitness_center_outlined,
                text: 'WORKOUT',
              ),
              GButton(
                icon: Icons.grid_view_rounded,
                text: 'E STORE',
              ),
              GButton(
                icon: Icons.person,
                text: 'PROFILE',
              ),
            ],
            selectedIndex: _selectedIndex,
            onTabChange: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }
}
