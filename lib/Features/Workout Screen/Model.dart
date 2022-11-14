import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:power_zone/Features/API%20Screens/BackExercise_Screen.dart';
import 'package:power_zone/Features/API%20Screens/CardioExercise_Screen.dart';
import 'package:power_zone/Features/API%20Screens/WaistExercises_Screen.dart';

final List<Popular> popular = [
  Popular(
    imagUrl: "images/backCategory.jpg",
    name: "Back Exercises",
    pagename: BackExerciseScreen(),
  ),
  Popular(
    imagUrl: "images/waistCategory.jpg",
    name: "Waist Exercises",
    pagename: WaistExerciseScreen(),
  ),
  Popular(
    imagUrl: "images/cardioCategory.jpg",
    name: "Cardio Exercises",
    pagename: CardioExerciseScreen(),
  ),
];

class Popular {
  final String imagUrl;
  final String name;
  Widget pagename;

  Popular({required this.imagUrl, required this.name, required this.pagename});
}

final List<Hard> hard = [
  Hard(
    imagUrl: "images/neckCategory.jpg",
    name: "Neck Exercises",
  ),
  Hard(
    imagUrl: "images/shoulderCategory.jpg",
    name: "Shoulders Exercises",
  ),
  Hard(
    imagUrl: "images/chestCategory.jpg",
    name: "Chest Exercises",
  ),
];

class Hard {
  final String imagUrl;
  final String name;

  Hard({required this.imagUrl, required this.name});
}

final List<fullBody> fullbody = [
  fullBody(
    imagUrl: "images/upperArms.jpg",
    name: "Upper Arms Exercises",
  ),
  fullBody(
    imagUrl: "images/lowerArms.jpg",
    name: "Lower Arms Exercises",
  ),
  fullBody(
    imagUrl: "images/sule.png",
    name: "Upper Legs Exercises",
  ),
  fullBody(
    imagUrl: "images/alexsandra.png",
    name: "Lower Legs Exercises",
  )
];

class fullBody {
  final String imagUrl;
  final String name;

  fullBody({required this.imagUrl, required this.name});
}
