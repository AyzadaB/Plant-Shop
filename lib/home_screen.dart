import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_shop_2/colors.dart';
import 'package:plant_shop_2/product_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<String> categories = [
    'All',
    'Indoor',
    'Outdoor',
    'Popular',
    'New',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Find your \nfavourite plants",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.black45)),
                        child: const Icon(Icons.search, color: Colors.black45),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: (8)),
                  child: Stack(
                    children: [
                      Container(
                        height: 100,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colours.grn2Clr,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        height: 100,
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "30% OFF",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "02 - 23 July",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black54),
                                ),
                              ],
                            ),
                            Image.asset(
                              "assets/images/plant.png",
                              scale: 0.5,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  height: 40,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: categories.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.symmetric(horizontal: 15),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                              color:
                                  index == 1 ? Colors.black12 : Colors.black),
                        ),
                        height: 50,
                        child: Center(
                          child: Text(
                            categories[index],
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color:
                                    index == 1 ? Colors.black12 : Colors.black),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: SizedBox(
                    height: 350,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        return Stack(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(
                                  right: 15, top: 5, left: 5, bottom: 5),
                              width: MediaQuery.of(context).size.width / 2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colours.greyClr,
                                boxShadow: const [
                                  BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 2,
                                      spreadRadius: 1),
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(8),
                              margin: const EdgeInsets.only(
                                  right: 10, top: 5, left: 5, bottom: 5),
                              width: MediaQuery.of(context).size.width / 2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colours.greyClr,
                                boxShadow: const [
                                  BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 2,
                                      spreadRadius: 1),
                                ],
                              ),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 280,
                                    child: Stack(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: InkWell(
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        const ProductScreen(),
                                                  ));
                                            },
                                            child: Image.asset(
                                                'assets/images/plant${index + 1}.png'),
                                          ),
                                        ),
                                        const Align(
                                          alignment: Alignment.topRight,
                                          child: Text(
                                            "\$40",
                                            style: TextStyle(
                                                fontSize: 17,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            color: Colors.white),
                                        child: Text(
                                          'Add To Card',
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Colours.blClr,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.all(9),
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colours.blClr,
                                        ),
                                        child: const Icon(
                                          Icons.favorite_outline,
                                          color: Colors.white38,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        height: 90,
        decoration: BoxDecoration(
          color: Colours.greyClr,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () => Navigator.pop(context),
              child: const Icon(
                CupertinoIcons.home,
                color: Colors.black54,
              ),
            ),
            const Icon(
              Icons.favorite_outline,
              color: Colors.black54,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colours.blClr),
              child: const Icon(
                CupertinoIcons.qrcode,
                color: Colors.white54,
              ),
            ),
            const Icon(
              Icons.shopping_bag_outlined,
              color: Colors.black54,
            ),
            const Icon(
              CupertinoIcons.person,
              color: Colors.black54,
            ),
          ],
        ),
      ),
    );
  }
}
