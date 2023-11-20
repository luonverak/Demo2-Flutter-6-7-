import 'package:carousel_slider/carousel_slider.dart';
import 'package:demo3/model/category_model.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
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
                  padding: const EdgeInsets.only(top: 180),
                  child: CarouselSlider(
                    items: [
                      Container(
                        width: 240,
                        color: Colors.blue,
                      )
                    ],
                    options: CarouselOptions(
                      height: 280,
                      viewportFraction: 0.7,
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
