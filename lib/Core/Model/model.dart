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
