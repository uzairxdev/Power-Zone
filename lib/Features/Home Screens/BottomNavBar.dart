import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:power_zone/Features/Category%20Screen/CategoryScreen.dart';
import 'package:power_zone/Features/Profile%20Screen/Profile_Screen.dart';
import 'package:power_zone/Features/Home%20Screens/Home_Screen.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  static List<dynamic> _widgetOptions = <dynamic>[
    HomeScreen(),
    CategoryScreen(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                text: 'Workout',
              ),
              GButton(
                icon: Icons.grid_view_rounded,
                text: 'Category',
              ),
              GButton(
                icon: Icons.person,
                text: 'Profile',
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
