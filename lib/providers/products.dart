import 'package:flutter/material.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

class Products with ChangeNotifier {
  // ignore: prefer_final_fields
  List<Product> _products = [];
  List<Product> get products => _products;

  Future<void> fetchItemFromServer() async {
    QueryBuilder<ParseObject> productQuery =
        QueryBuilder(ParseObject('Products'));
    final parseResponse = await productQuery.query();
    if (parseResponse.success) {
      final List<Product> extractedProduct = [];
      final List<ParseObject> objects =
          parseResponse.results as List<ParseObject>;
      for (var element in objects) {
        extractedProduct.add(
          Product(
            id: element.objectId.toString(),
            title: element.get('title'),
            imageUrl: element.get('imageUrl'),
            price: element.get('price'),
            type: element.get('type'),
            remaining: {
              Color(int.parse((element.get('color') as String)
                  .replaceAll('#', '0xff'))): element.get('quantity')
            },
          ),
        );
      }
      _products = extractedProduct;
      notifyListeners();
    } else {
      debugPrint('Failed to fetch data');
    }
  }
}

class Product {
  final String id;
  final String title;
  final String imageUrl;
  final String type;
  final double price;
  final Map<Color, int> remaining;

  Product({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.type,
    required this.price,
    required this.remaining,
  });
}
