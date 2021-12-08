import 'package:flutter/material.dart';

class Item {
  final String image, title, description;
  final int price, size, id;
  final Color color;
  final bool isFavorite;

  Item({
    required this.isFavorite,
    required this.price,
    required this.size,
    required this.id,
    required this.color,
    required this.image,
    required this.title,
    required this.description,
  });
}

List<Item> items = [
  Item(
      id: 1,
      title: "Flower",
      price: 80,
      size: 12,
      isFavorite: false,
      description: "Nice bouquet Flowers red roses ",
      image:
          "https://www.freepnglogos.com/uploads/flower-bouquet-png/flower-bouquet-round-transparent-png-stick-9.png",
      color: const Color(0xFF3D82AE)),
  Item(
      id: 2,
      title: "Toys",
      price: 70,
      size: 12,
      isFavorite: false,
      description: "Gift",
      image:
          "https://www.freepnglogos.com/uploads/flower-bouquet-png/nice-bouquet-flowers-red-rose-clipart-background-29.png",
      color: const Color(0xFFAEA33D)),
  Item(
      id: 3,
      title: "Perfumes",
      price: 40,
      isFavorite: false,
      size: 12,
      description:
          "A flower is the reproductive part of flowering plants. Flowers are also called the bloom or blossom of a plant. Flowers have petals.",
      image:
          "https://www.freepnglogos.com/uploads/flower-bouquet-png/flower-bouquet-birthday-flowers-18.png",
      color: const Color(0xFFAA3DAE)),
  Item(
      id: 4,
      title: "Perfumes",
      price: 50,
      size: 12,
      isFavorite: false,
      description: "Gift",
      image:
          "https://www.freepnglogos.com/uploads/flower-bouquet-png/flower-bouquet-birthday-flowers-18.png",
      color: const Color(0xFF523DAE)),
  Item(
      id: 5,
      title: "Perfumes",
      price: 30,
      size: 12,
      isFavorite: false,
      description: "Gift",
      image:
          "https://www.freepnglogos.com/uploads/flower-bouquet-png/flower-bouquet-birthday-flowers-18.png",
      color: const Color(0xFF3DAE55)),
  Item(
      id: 6,
      title: "Perfumes",
      price: 50,
      size: 12,
      isFavorite: false,
      description: "Gift",
      image:
          "https://www.freepnglogos.com/uploads/flower-bouquet-png/flower-bouquet-birthday-flowers-18.png",
      color: const Color(0xFFC2B039)),
];
