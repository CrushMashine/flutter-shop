import 'package:flutter/material.dart';

class Product {
  final String text;
  final String image;
  final int price;
  final Color bgColor;
  Product({
    required this.text,
    required this.image,
    required this.price,
    this.bgColor = const Color(0xFFEFEFF2),
  });
}

List<Product> products = [
  Product(
    text: 'Long Sleeve',
    image: 'assets/images/product_0.png',
    price: 168,
  ),
  Product(
    text: 'Long Sleeve',
    image: 'assets/images/product_1.png',
    price: 170,
  ),
  Product(
    text: 'Casual Henley',
    image: 'assets/images/product_2.png',
    price: 130,
  ),
  Product(
    text: 'Long Sleeve',
    image: 'assets/images/product_3.png',
    price: 112,
  ),
];
