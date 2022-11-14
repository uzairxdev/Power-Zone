import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';

import '../API Screens/BackExercise_Screen.dart';
import '../API Screens/CardioExercise_Screen.dart';
import '../API Screens/ChestExercise_Screen.dart';
import '../API Screens/LowerArmsEx_Screen.dart';
import '../API Screens/LowerLegsEx_Screen.dart';
import '../API Screens/NeckExcercise_Screen.dart';
import '../API Screens/ShouldersExercise_Screen.dart';
import '../API Screens/UpperArmsEx_Screen.dart';
import '../API Screens/UpperLegsEx_Screen.dart';
import '../API Screens/WaistExercises_Screen.dart';

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
    pagename: NeckExerciseScreen(),
  ),
  Hard(
    imagUrl: "images/shoulderCategory.jpg",
    name: "Shoulders Exercises",
    pagename: ShouldersExerciseScreen(),
  ),
  Hard(
    imagUrl: "images/chestCategory.jpg",
    name: "Chest Exercises",
    pagename: ChestExerciseScreen(),
  ),
];

class Hard {
  final String imagUrl;
  final String name;
  Widget pagename;

  Hard({required this.imagUrl, required this.name, required this.pagename});
}

final List<fullBody> fullbody = [
  fullBody(
    imagUrl: "images/upperArms.jpg",
    name: "Upper Arms Exercises",
    pagename: UpperArmsExScreen(),
  ),
  fullBody(
    imagUrl: "images/lowerArms.jpg",
    name: "Lower Arms Exercises",
    pagename: LowerArmsExScreen(),
  ),
  fullBody(
    imagUrl: "images/sule.png",
    name: "Upper Legs Exercises",
    pagename: UpperLegsExScreen(),
  ),
  fullBody(
    imagUrl: "images/alexsandra.png",
    name: "Lower Legs Exercises",
    pagename: LowerLegsExScreen(),
  )
];

class fullBody {
  final String imagUrl;
  final String name;
  Widget pagename;

  fullBody({required this.imagUrl, required this.name, required this.pagename});
}
