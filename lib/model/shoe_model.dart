import 'package:flutter/material.dart';

class ShoeModel {
  final int id;
  final String name;
  final double price;
  late bool favorite;
  late int counter;
  final String image;
  final Color color;
  final List<Color> moreColor;
  final List<int> size;
  final String description;
  ShoeModel({
    required this.id,
    required this.name,
    required this.price,
    required this.favorite,
    required this.counter,
    required this.image,
    required this.color,
    required this.moreColor,
    required this.size,
    required this.description,
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
    moreColor: [
      Colors.black,
      Colors.blue,
      Colors.red,
      Colors.yellow,
    ],
    size: [38, 39, 40, 41],
    description:
        'Good running shoes can make the difference between a run realized and a run refused. And even though it takes some trial and error to find the right pair for your feet and goals, the payoff is real: You’ll have shoes that lay the groundwork for a comfortable, rewarding, and enduring pursuit—whether you’re running primarily for your health or for personal bests.',
  ),
  ShoeModel(
    id: 2,
    name: 'Cloudeclipse',
    price: 12,
    favorite: false,
    counter: 1,
    image: 'asset/image/shoe2.webp',
    color: Colors.red,
    moreColor: [
      Colors.black,
      Colors.blue,
      Colors.red,
      Colors.yellow,
    ],
    size: [38, 39, 40, 41],
    description:
        'Good running shoes can make the difference between a run realized and a run refused. And even though it takes some trial and error to find the right pair for your feet and goals, the payoff is real: You’ll have shoes that lay the groundwork for a comfortable, rewarding, and enduring pursuit—whether you’re running primarily for your health or for personal bests.',
  ),
  ShoeModel(
    id: 3,
    name: 'Cloudeclipse',
    price: 18,
    favorite: false,
    counter: 1,
    image: 'asset/image/shoe3.webp',
    color: Colors.purple,
    moreColor: [
      Colors.black,
      Colors.blue,
      Colors.red,
      Colors.yellow,
    ],
    size: [38, 39, 40, 41],
    description:
        'Good running shoes can make the difference between a run realized and a run refused. And even though it takes some trial and error to find the right pair for your feet and goals, the payoff is real: You’ll have shoes that lay the groundwork for a comfortable, rewarding, and enduring pursuit—whether you’re running primarily for your health or for personal bests.',
  ),
  ShoeModel(
    id: 4,
    name: 'Cloudeclipse',
    price: 15,
    favorite: false,
    counter: 1,
    image: 'asset/image/shoe4.png',
    color: Colors.green,
    moreColor: [
      Colors.black,
      Colors.blue,
      Colors.red,
      Colors.yellow,
    ],
    size: [38, 39, 40, 41],
    description:
        'Good running shoes can make the difference between a run realized and a run refused. And even though it takes some trial and error to find the right pair for your feet and goals, the payoff is real: You’ll have shoes that lay the groundwork for a comfortable, rewarding, and enduring pursuit—whether you’re running primarily for your health or for personal bests.',
  ),
  ShoeModel(
    id: 5,
    name: 'Cloudeclipse',
    price: 15,
    favorite: false,
    counter: 1,
    image: 'asset/image/shoe5.webp',
    color: Colors.yellow,
    moreColor: [
      Colors.black,
      Colors.blue,
      Colors.red,
      Colors.yellow,
    ],
    size: [38, 39, 40, 41],
    description:
        'Good running shoes can make the difference between a run realized and a run refused. And even though it takes some trial and error to find the right pair for your feet and goals, the payoff is real: You’ll have shoes that lay the groundwork for a comfortable, rewarding, and enduring pursuit—whether you’re running primarily for your health or for personal bests.',
  ),
  ShoeModel(
    id: 6,
    name: 'Cloudeclipse',
    price: 15,
    favorite: false,
    counter: 1,
    image: 'asset/image/shoe6.webp',
    color: Colors.black,
    moreColor: [
      Colors.black,
      Colors.blue,
      Colors.red,
      Colors.yellow,
    ],
    size: [38, 39, 40, 41],
    description:
        'Good running shoes can make the difference between a run realized and a run refused. And even though it takes some trial and error to find the right pair for your feet and goals, the payoff is real: You’ll have shoes that lay the groundwork for a comfortable, rewarding, and enduring pursuit—whether you’re running primarily for your health or for personal bests.',
  ),
  ShoeModel(
    id: 7,
    name: 'Cloudeclipse',
    price: 15,
    favorite: false,
    counter: 1,
    image: 'asset/image/shoe7.webp',
    color: Colors.orange,
    moreColor: [
      Colors.black,
      Colors.blue,
      Colors.red,
      Colors.yellow,
    ],
    size: [38, 39, 40, 41],
    description:
        'Good running shoes can make the difference between a run realized and a run refused. And even though it takes some trial and error to find the right pair for your feet and goals, the payoff is real: You’ll have shoes that lay the groundwork for a comfortable, rewarding, and enduring pursuit—whether you’re running primarily for your health or for personal bests.',
  )
];
