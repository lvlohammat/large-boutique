import 'package:flutter/material.dart';

import '../../providers/products.dart';
import 'components/detail_body.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});
  static const routeName = '/detail';

  @override
  Widget build(BuildContext context) {
    final product = ModalRoute.of(context)!.settings.arguments as Product;
    return Scaffold(
      appBar: AppBar(
        title: Text(product.title),
      ),
      body: DetailBody(product: product),
    );
  }
}
