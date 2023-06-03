import 'package:flutter/material.dart';

class FoodDetailPage extends StatelessWidget {
  final String foodName;
  final String imagePath;
  const FoodDetailPage(
      {super.key, required this.foodName, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 212, 188),
      body: Stack(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  // back arrow and foodname
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.arrow_back,
                          size: 35,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        foodName,
                        style: const TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  // food image
                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: SizedBox(
                        width: 200,
                        child: Image.asset(
                          imagePath,
                        )),
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.only(
                  top: 30, left: 30, right: 30, bottom: 10),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),
                color: Colors.white,
              ),
              height: size.height / 1.70,
              width: size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Ingredients",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  // Ingredients
                  Row(
                    children: const [
                      Ingredients(
                        circleColor: Color(0xFF75D1FF),
                        materialName: 'Sugar',
                        materialWeight: '8 Gram',
                        materialPercent: '2%',
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Ingredients(
                        circleColor: Color(0xFFFFA9A9),
                        materialName: 'Salt',
                        materialWeight: '9 Gram',
                        materialPercent: '.3%',
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Ingredients(
                        circleColor: Color(0xFFFF8AD8),
                        materialName: 'Fat',
                        materialWeight: '7 Gram',
                        materialPercent: '12%',
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Ingredients(
                        circleColor: Color(0xFFFFA477),
                        materialName: 'Energy',
                        materialWeight: '140 Kcal',
                        materialPercent: '40%',
                      ),
                    ],
                  ),
                  // Details
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "Details",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "The Sweet And Subtle Salty Combo Of Chocolate Meets Caramel. Introduce The Caramel Duo To Your Mouth! ",
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(17),
                    child: Container(
                      height: 82,
                      padding: const EdgeInsets.symmetric(
                          vertical: 17, horizontal: 25),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(17),
                          color: Colors.white,
                          border: Border.all(
                              color: const Color.fromARGB(255, 207, 207, 207),
                              width: 2)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "\$12.75",
                                style: TextStyle(
                                    fontWeight: FontWeight.w900, fontSize: 17),
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              Text("Delivery Charges Included",
                                  style: TextStyle(
                                      color: Colors.grey[600], fontSize: 12)),
                            ],
                          ),
                          const Text(
                            "Add to Cart",
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 20,
                                decoration: TextDecoration.underline),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Ingredients extends StatelessWidget {
  final String materialName;
  final String materialWeight;
  final String materialPercent;
  final Color circleColor;
  const Ingredients({
    super.key,
    required this.circleColor,
    required this.materialName,
    required this.materialWeight,
    required this.materialPercent,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 140,
      padding: const EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        border: Border.all(color: Colors.black, width: 1),
      ),
      child: Column(
        children: [
          Text(
            materialName,
            style: const TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 15,
            ),
          ),
          const SizedBox(
            height: 7,
          ),
          Text(
            materialWeight,
            style: TextStyle(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w500,
                fontSize: 11,
                color: Colors.grey[600]),
          ),
          const SizedBox(
            height: 7,
          ),
          Container(
            width: 60,
            height: 60,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: circleColor.withOpacity(0.5),
            ),
            child: Center(
              child: Text(
                materialPercent,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
