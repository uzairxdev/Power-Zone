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
    imagUrl:
        "https://cdn.pixabay.com/photo/2015/07/02/10/23/training-828741_1280.jpg",
    name: "Back Exercises",
    pagename: BackExerciseScreen(),
  ),
  Popular(
    imagUrl:
        "https://media.istockphoto.com/id/937865602/photo/fitness-sexy-woman-showing-abs-and-flat-belly-beautiful-muscular-girl-shaped-abdominal.jpg?s=612x612&w=0&k=20&c=mJqbOLi5hlWuO_OdPBoC8iDx1ST76sOA7pjdGAKcy_4=",
    name: "Waist Exercises",
    pagename: WaistExerciseScreen(),
  ),
  Popular(
    imagUrl:
        "https://media.istockphoto.com/id/1132086660/photo/side-view-of-beautiful-muscular-woman-running-on-treadmill.jpg?s=612x612&w=0&k=20&c=5Vq_BJjG7sbIyKIP-Adu0pChReDXm0dC7BVPvto2M0I=",
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
    imagUrl:
        "https://images.pexels.com/photos/7592384/pexels-photo-7592384.jpeg?auto=compress&cs=tinysrgb&w=600",
    name: "Neck Exercises",
    pagename: NeckExerciseScreen(),
  ),
  Hard(
    imagUrl:
        "https://images.pexels.com/photos/2780762/pexels-photo-2780762.jpeg?auto=compress&cs=tinysrgb&w=600",
    name: "Shoulders Exercises",
    pagename: ShouldersExerciseScreen(),
  ),
  Hard(
    imagUrl:
        "https://images.pexels.com/photos/841130/pexels-photo-841130.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
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
    imagUrl:
        "https://images.pexels.com/photos/4162444/pexels-photo-4162444.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
    name: "Upper Arms Exercises",
    pagename: UpperArmsExScreen(),
  ),
  fullBody(
    imagUrl:
        "https://images.pexels.com/photos/4720283/pexels-photo-4720283.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
    name: "Lower Arms Exercises",
    pagename: LowerArmsExScreen(),
  ),
  fullBody(
    imagUrl:
        "https://images.pexels.com/photos/949134/pexels-photo-949134.jpeg?auto=compress&cs=tinysrgb&w=600",
    name: "Upper Legs Exercises",
    pagename: UpperLegsExScreen(),
  ),
  fullBody(
    imagUrl:
        "https://images.pexels.com/photos/3490348/pexels-photo-3490348.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
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
