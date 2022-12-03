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
    imagUrl: "images/backEx.jpg",
    name: "Back Exercises",
    pagename: BackExerciseScreen(),
  ),
  Popular(
    imagUrl: "images/WaistEx.jpg",
    name: "Waist Exercises",
    pagename: WaistExerciseScreen(),
  ),
  Popular(
    imagUrl: "images/CardioEx.jpg",
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
    imagUrl: "images/NeckEx.jpg",
    name: "Neck Exercises",
    pagename: NeckExerciseScreen(),
  ),
  Hard(
    imagUrl: "images/ShoulderEx.jpg",
    name: "Shoulders Exercises",
    pagename: ShouldersExerciseScreen(),
  ),
  Hard(
    imagUrl: "images/ChestEx.jpeg",
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
    imagUrl: "images/UpperArm.jpeg",
    name: "Upper Arms Exercises",
    pagename: UpperArmsExScreen(),
  ),
  fullBody(
    imagUrl: "images/LowerArm.jpeg",
    name: "Lower Arms Exercises",
    pagename: LowerArmsExScreen(),
  ),
  fullBody(
    imagUrl: "images/UpperLeg.jpg",
    name: "Upper Legs Exercises",
    pagename: UpperLegsExScreen(),
  ),
  fullBody(
    imagUrl: "images/LowerLeg.jpg",
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
