import 'package:carousel_slider/carousel_slider.dart';
import 'package:demo3/model/category_model.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:simple_shadow/simple_shadow.dart';
import '../widget/category_widget.dart';
import '../widget/color_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.sizeOf(context).height / 2.3,
                decoration: const BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(250),
                  ),
                ),
                child: ListView(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 15, right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Discover',
                            style: TextStyle(
                              fontSize: 35,
                              color: textColor,
                              fontFamily: 'Lato',
                            ),
                          ),
                          badges.Badge(
                            badgeContent: Text('3'),
                            child: Icon(
                              Icons.shopping_cart,
                              color: Colors.white,
                              size: 30,
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 20),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            for (int i = 0; i < listCategory.length; i++)
                              CategoryWidget(
                                categoryModel: listCategory[i],
                              ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                child: Padding(
                  padding: const EdgeInsets.only(top: 170),
                  child: CarouselSlider(
                    items: [
                      Container(
                        width: 230,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.black, width: 1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: double.infinity,
                                  height: 170,
                                  child: Center(
                                    child: SimpleShadow(
                                      opacity: 0.8,
                                      color: Colors.blue,
                                      offset: const Offset(5, 5),
                                      sigma: 9,
                                      child: Image.asset(
                                        'asset/image/shoe.webp',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                const Text(
                                  'Cloudmonster',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Lato2',
                                  ),
                                ),
                                const Text(
                                  '\$ 20.0',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Lato',
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        child: const Padding(
                                          padding: EdgeInsets.all(4.0),
                                          child: Icon(
                                            Icons.favorite,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        child: const Padding(
                                          padding: EdgeInsets.all(4.0),
                                          child: Icon(
                                            Icons.shopping_cart,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                    options: CarouselOptions(
                      height: 270,
                      viewportFraction: 0.6,
                      enableInfiniteScroll: true,
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 5),
                      autoPlayAnimationDuration: const Duration(seconds: 5),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      enlargeFactor: 0.3,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
