import 'package:donut_app/pages/food_detail_page.dart';
import 'package:donut_app/util/food_list.dart';
import 'package:donut_app/util/header_widget.dart';
import 'package:flutter/material.dart';

int selectedFood = 0;
int selectedDetail = 0;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavBar(),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
          child: Column(
            children: [
              // Header
              const HeaderWidget(),
              const SizedBox(
                height: 20,
              ),
              // Food menu
              SizedBox(
                height: 100,
                child: ListView.separated(
                  separatorBuilder: (context, index) => const SizedBox(
                    width: 6,
                  ),
                  scrollDirection: Axis.horizontal,
                  physics: const ClampingScrollPhysics(),
                  itemCount: foodLists.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              selectedFood = index;
                            });
                          },
                          child: Container(
                            height: 67,
                            padding: const EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              border: selectedFood == index
                                  ? Border.all(color: Colors.black)
                                  : Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(17),
                              color: selectedFood == index
                                  ? Colors.white
                                  : Colors.grey[200],
                            ),
                            child: Image.asset(
                              foodLists[index].iconPath,
                              color: selectedFood == index
                                  ? Colors.black
                                  : Colors.grey[600],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          foodLists[index].foodName,
                          style: const TextStyle(
                            color: Colors.black,
                          ),
                        )
                      ],
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              // Foods
              Expanded(
                child: GridView.builder(
                  itemCount: foodLists[selectedFood].foodDetail.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 2 / 3.3,
                      crossAxisCount: 2,
                      crossAxisSpacing: 15.0,
                      mainAxisSpacing: 15.0),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => FoodDetailPage(
                                  foodName: foodLists[selectedFood]
                                      .foodDetail[index]
                                      .foodNames,
                                  imagePath: foodLists[selectedFood]
                                      .foodDetail[index]
                                      .foodImage,
                                ),
                              ));
                        });
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          decoration: BoxDecoration(
                            color: foodLists[selectedFood]
                                .foodDetail[index]
                                .backColor
                                .withOpacity(0.1),
                          ),
                          child: Stack(
                            children: [
                              // price
                              Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 20),
                                  decoration: BoxDecoration(
                                      color: foodLists[selectedFood]
                                          .foodDetail[index]
                                          .backColor
                                          .withOpacity(0.3),
                                      borderRadius: const BorderRadius.only(
                                          topRight: Radius.circular(20),
                                          bottomLeft: Radius.circular(20))),
                                  child: Text(
                                    foodLists[selectedFood]
                                        .foodDetail[index]
                                        .foodPrice,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: foodLists[selectedFood]
                                          .foodDetail[index]
                                          .backColor,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 15, right: 15, top: 60),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      SizedBox(
                                          height: 110,
                                          width: 90,
                                          child: Image.asset(
                                            foodLists[selectedFood]
                                                .foodDetail[index]
                                                .foodImage,
                                          )),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        foodLists[selectedFood]
                                            .foodDetail[index]
                                            .foodNames,
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Dunkin's",
                                        style: TextStyle(
                                          color: Colors.grey[600],
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Icon(
                                            Icons.favorite_border_outlined,
                                            size: 25,
                                          ),
                                          Text(
                                            "Add",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w900,
                                              fontSize: 17,
                                              decoration:
                                                  TextDecoration.underline,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(17),
        child: Container(
          height: 94,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(17),
              color: Colors.white,
              border: Border.all(
                  color: const Color.fromARGB(255, 207, 207, 207), width: 2)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "2 Items | \$45",
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Text("Delivery Charges Included",
                      style: TextStyle(color: Colors.grey[600])),
                ],
              ),
              const Text(
                "View Cart",
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 20,
                    decoration: TextDecoration.underline),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
