import 'package:flutter/material.dart';

class Products with ChangeNotifier {
  // ignore: prefer_final_fields
  List<Product> _products = [
    Product(
        id: '1',
        title: 'New Nike Shoe white and blue',
        type: 'shoes',
        price: 150000,
        remaining: {
          Colors.black: 1,
          Colors.red: 3,
        })
  ];
  List<Product> get products => _products;
}

class Product {
  final String id;
  final String title;
  final String type;
  final double price;
  final Map<Color, int> remaining;

  Product({
    required this.id,
    required this.title,
    required this.type,
    required this.price,
    required this.remaining,
  });
}
