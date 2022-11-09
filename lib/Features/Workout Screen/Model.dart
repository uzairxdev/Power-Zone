final List<Popular> popular = [
  Popular(
    imagUrl: "images/backCategory.jpg",
    name: "Back Exercises",
  ),
  Popular(
    imagUrl: "images/waistCategory.jpg",
    name: "Waist Exercises",
  ),
  Popular(
    imagUrl: "images/cardioCategory.jpg",
    name: "Cardio Exercises",
  ),
];

class Popular {
  final String imagUrl;
  final String name;

  Popular({required this.imagUrl, required this.name});
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
