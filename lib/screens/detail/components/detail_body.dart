import 'package:flutter/material.dart';
import 'package:large/providers/products.dart';

import 'detail_image_box.dart';

class DetailBody extends StatefulWidget {
  const DetailBody({super.key, required this.product});
  final Product product;

  @override
  State<DetailBody> createState() => _DetailBodyState();
}

class _DetailBodyState extends State<DetailBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: LayoutBuilder(
        builder: (p0, constraints) => SingleChildScrollView(
          child: Column(
            children: [
              DetailImageBox(
                imageUrl: widget.product.imageUrl,
                constraints: constraints,
                productColor: widget.product.remaining.keys.first,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
