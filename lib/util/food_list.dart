import 'package:flutter/material.dart';

class FoodDetails {
  final String foodNames;
  final String foodImage;
  final String foodPrice;
  final Color backColor;
  FoodDetails(
      {required this.foodNames,
      required this.foodImage,
      required this.foodPrice,
      required this.backColor});
}

class Foods {
  final String foodName;
  final String iconPath;
  final List foodDetail;
  Foods(
      {required this.foodName,
      required this.iconPath,
      required this.foodDetail});
}

List foodLists = [
  Foods(
    foodName: "Donuts",
    iconPath: "assets/icons/donut.png",
    foodDetail: [
      FoodDetails(
        foodNames: "Strawberry",
        foodImage: "assets/images/strawberry_donut.png",
        foodPrice: "\$36",
        backColor: const Color(0xFF75D1FF),
      ),
      FoodDetails(
        foodNames: "Chocolate",
        foodImage: "assets/images/chocolate_donut.png",
        foodPrice: "\$45",
        backColor: const Color(0xFFFFA9A9),
      ),
      FoodDetails(
        foodNames: "Grape",
        foodImage: "assets/images/grape_donut.png",
        foodPrice: "\$84",
        backColor: const Color(0xFFFF8AD8),
      ),
      FoodDetails(
        foodNames: "İcecream",
        foodImage: "assets/images/icecream_donut.png",
        foodPrice: "\$95",
        backColor: const Color(0xFFFFA477),
      ),
    ],
  ),
  Foods(
    foodName: "Burger",
    iconPath: "assets/icons/burger.png",
    foodDetail: [
      FoodDetails(
        foodNames: "Burger",
        foodImage: "assets/burger.png",
        foodPrice: "\$36",
        backColor: const Color(0xFF75D1FF),
      ),
      FoodDetails(
        foodNames: "Hamburger",
        foodImage: "assets/burger.png",
        foodPrice: "\$45",
        backColor: const Color(0xFFFFA9A9),
      ),
      FoodDetails(
        foodNames: "Mxc Burger",
        foodImage: "assets/burger.png",
        foodPrice: "\$84",
        backColor: const Color(0xFFFF8AD8),
      ),
      FoodDetails(
        foodNames: "İcecream",
        foodImage: "assets/burger.png",
        foodPrice: "\$95",
        backColor: const Color(0xFFFFA477),
      ),
    ],
  ),
  Foods(
    foodName: "Smothie",
    iconPath: "assets/icons/smoothie.png",
    foodDetail: [
      FoodDetails(
        foodNames: "Smothie",
        foodImage: "assets/smothie.png",
        foodPrice: "\$36",
        backColor: const Color(0xFF75D1FF),
      ),
      FoodDetails(
        foodNames: "Smothie",
        foodImage: "assets/smothie.png",
        foodPrice: "\$45",
        backColor: const Color(0xFFFFA9A9),
      ),
      FoodDetails(
        foodNames: "Smothie",
        foodImage: "assets/smothie.png",
        foodPrice: "\$84",
        backColor: const Color(0xFFFF8AD8),
      ),
      FoodDetails(
        foodNames: "Smothie",
        foodImage: "assets/smothie.png",
        foodPrice: "\$95",
        backColor: const Color(0xFFFFA477),
      ),
    ],
  ),
  Foods(
    foodName: "PanCake",
    iconPath: "assets/icons/pancakes.png",
    foodDetail: [
      FoodDetails(
        foodNames: "PanCake",
        foodImage: "assets/images/strawberry_donut.png",
        foodPrice: "\$36",
        backColor: const Color(0xFF75D1FF),
      ),
      FoodDetails(
        foodNames: "PanCake",
        foodImage: "assets/images/chocolate_donut.png",
        foodPrice: "\$45",
        backColor: const Color(0xFFFFA9A9),
      ),
      FoodDetails(
        foodNames: "PanCake",
        foodImage: "assets/images/grape_donut.png",
        foodPrice: "\$84",
        backColor: const Color(0xFFFF8AD8),
      ),
      FoodDetails(
        foodNames: "PanCake",
        foodImage: "assets/images/icecream_donut.png",
        foodPrice: "\$95",
        backColor: const Color(0xFFFFA477),
      ),
    ],
  ),
  Foods(
    foodName: "Pizza",
    iconPath: "assets/icons/pizza.png",
    foodDetail: [
      FoodDetails(
        foodNames: "Pizza",
        foodImage: "assets/pizza.png",
        foodPrice: "\$36",
        backColor: const Color(0xFF75D1FF),
      ),
      FoodDetails(
        foodNames: "Pizza",
        foodImage: "assets/pizza.png",
        foodPrice: "\$45",
        backColor: const Color(0xFFFFA9A9),
      ),
      FoodDetails(
        foodNames: "Pizza",
        foodImage: "assets/pizza.png",
        foodPrice: "\$84",
        backColor: const Color(0xFFFF8AD8),
      ),
      FoodDetails(
        foodNames: "Pizza",
        foodImage: "assets/pizza.png",
        foodPrice: "\$95",
        backColor: const Color(0xFFFFA477),
      ),
    ],
  ),
];
