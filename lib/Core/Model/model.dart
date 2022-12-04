var E_Store_List = <Model>[
  Model(
    Image: "images/ExBench.png",
    Price: "PKR 7,399",
    disPrice: "PKR 9,499",
    Sub_name: "Exercise Bench",
  ),
  Model(
    Image: "images/ExBike.png",
    Price: "PKR 6,999",
    disPrice: "PKR 9,999",
    Sub_name: "Exercise Bike",
  ),
  Model(
    Image: "images/ExAbdominal.png",
    Price: "PKR 4,999",
    disPrice: "PKR 6,999",
    Sub_name: "Abdonimal",
  ),
  Model(
    Image: "images/ExFitnessBall.png",
    Price: "PKR 3,199",
    disPrice: "PKR 5,299",
    Sub_name: "Fitness Ball",
  ),
  Model(
    Image: "images/ExPullDown.png",
    Price: "PKR 4,999",
    disPrice: "PKR 6,999",
    Sub_name: "Pull Down",
  ),
  Model(
    Image: "images/ExPlatteLoaded.png",
    Price: "PKR 11,999",
    disPrice: "PKR 14,999",
    Sub_name: "Platte Loaded",
  ),
  Model(
    Image: "images/ExBowflexMax.png",
    Price: "PKR 12,999",
    disPrice: "PKR 16,999",
    Sub_name: "Bowflex Max",
  ),
  Model(
    Image: "images/ExCardioTraining.png",
    Price: "PKR 14,999",
    disPrice: "PKR 17,999",
    Sub_name: "Cardio Training",
  ),
  Model(
    Image: "images/ExChestPressM.png",
    Price: "PKR 8,999",
    disPrice: "PKR 11,999",
    Sub_name: "Multiple Chest Presser",
  ),
  Model(
    Image: "images/ExHexDumbbell.png",
    Price: "PKR 6,999",
    disPrice: "PKR 9,999",
    Sub_name: "Hex Dumbbell",
  ),
  Model(
    Image: "images/ExIndoorBike.png",
    Price: "PKR 11,999",
    disPrice: "PKR 14,999",
    Sub_name: "Indoor Bike",
  ),
  Model(
    Image: "images/ExLowerBack.png",
    Price: "PKR 12,999",
    disPrice: "PKR 17,999",
    Sub_name: "Lower Back Exercise",
  ),
  Model(
    Image: "images/ExDumbbellSets.png",
    Price: "PKR 10,999",
    disPrice: "PKR 14,999",
    Sub_name: "Dumbbell Sets",
  ),
  Model(
    Image: "images/ExMotorized.png",
    Price: "PKR 7,999",
    disPrice: "PKR 11,999",
    Sub_name: "Motorized",
  ),
  Model(
    Image: "images/ExPortableTreadmill.png",
    Price: "PKR 11,999",
    disPrice: "PKR 14,999",
    Sub_name: "Portable Treadmill",
  ),
  Model(
    Image: "images/ExPowerTower.png",
    Price: "PKR 14,999",
    disPrice: "PKR 18,999",
    Sub_name: "Power Tower",
  ),
  Model(
    Image: "images/ExDumbbellWeight.png",
    Price: "PKR 10,999",
    disPrice: "PKR 13,999",
    Sub_name: "Dumbbell Weight",
  ),
  Model(
    Image: "images/ExSmithCage.png",
    Price: "PKR 11,999",
    disPrice: "PKR 14,999",
    Sub_name: "Smith Cage",
  ),
  Model(
    Image: "images/ExUprightBike.png",
    Price: "PKR 16,999",
    disPrice: "PKR 20,999",
    Sub_name: "Upright Bike",
  ),
  Model(
    Image: "images/ExWeightRack.png",
    Price: "PKR 9,999",
    disPrice: "PKR 12,999",
    Sub_name: "Weight Rack",
  ),
];

class Model {
  String? Image;
  String? disPrice;
  String? Price;
  String? Sub_name;

  Model({
    required this.Image,
    required this.disPrice,
    required this.Price,
    required this.Sub_name,
  });
}
