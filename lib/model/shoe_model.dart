import 'package:flutter/material.dart';

class ShoeModel {
  final int id;
  final String name;
  final double price;
  late bool favorite;
  late int counter;
  final String image;
  final Color color;

  ShoeModel({
    required this.id,
    required this.name,
    required this.price,
    required this.favorite,
    required this.counter,
    required this.image,
    required this.color,
  });
}

final List<ShoeModel> listShoe = [
  ShoeModel(
    id: 1,
    name: 'Cloudmonster',
    price: 20,
    favorite: false,
    counter: 1,
    image: 'asset/image/shoe.webp',
    color: Colors.blue,
  ),
  ShoeModel(
    id: 2,
    name: 'Cloudeclipse',
    price: 12,
    favorite: false,
    counter: 1,
    image: 'asset/image/shoe2.webp',
    color: Colors.red,
  ),
  ShoeModel(
    id: 3,
    name: 'Cloudeclipse',
    price: 18,
    favorite: false,
    counter: 1,
    image: 'asset/image/shoe3.webp',
    color: Colors.purple,
  ),
  ShoeModel(
    id: 4,
    name: 'Cloudeclipse',
    price: 15,
    favorite: false,
    counter: 1,
    image: 'asset/image/shoe4.png',
    color: Colors.green,
  ),
  ShoeModel(
    id: 5,
    name: 'Cloudeclipse',
    price: 15,
    favorite: false,
    counter: 1,
    image: 'asset/image/shoe5.webp',
    color: Colors.yellow,
  ),
  ShoeModel(
    id: 6,
    name: 'Cloudeclipse',
    price: 15,
    favorite: false,
    counter: 1,
    image: 'asset/image/shoe6.webp',
    color: Colors.black,
  ),
  ShoeModel(
    id: 7,
    name: 'Cloudeclipse',
    price: 15,
    favorite: false,
    counter: 1,
    image: 'asset/image/shoe7.webp',
    color: Colors.orange,
  )
];
