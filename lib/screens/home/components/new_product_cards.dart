import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../providers/products.dart';
import 'new_product_card.dart';

class NewProductCards extends StatelessWidget {
  const NewProductCards({
    super.key,
    required this.constraints,
  });
  final BoxConstraints constraints;

  @override
  Widget build(BuildContext context) {
    return Consumer<Products>(
      builder: (context, product, child) {
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...List.generate(
                product.products.length,
                (index) => NewProductCard(
                    constraints: constraints, product: product.products[index]),
              )
            ],
          ),
        );
      },
    );
  }
}
