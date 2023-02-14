import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:large/providers/products.dart';
import 'package:large/screens/detail/detail_screen.dart';

import '../../../constants.dart';

class NewProductCard extends StatelessWidget {
  const NewProductCard(
      {super.key, required this.constraints, required this.product});
  final BoxConstraints constraints;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context)
          .pushNamed(DetailScreen.routeName, arguments: product),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        height: constraints.maxHeight * .45,
        width: constraints.maxWidth * .38,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: constraints.maxWidth * .38,
              height: constraints.maxHeight * .2,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: kContainerBgColor),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network(product.imageUrl, fit: BoxFit.cover),
              ),
            ),
            SizedBox(
              height: constraints.maxHeight * .01,
            ),
            SizedBox(
              height: constraints.maxHeight * .24,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.title,
                    style: const TextStyle(
                      fontSize: 15,
                      overflow: TextOverflow.ellipsis,
                    ),
                    maxLines: 2,
                  ),
                  Row(
                    children: [
                      Text(
                        product.type,
                        style: const TextStyle(
                            color: kCommentColor,
                            fontWeight: FontWeight.w300,
                            fontSize: 15),
                      ),
                      const Spacer(),
                      CircleAvatar(
                        foregroundColor: kHeartColor,
                        backgroundColor: kContainerBgColor,
                        child: IconButton(
                          icon: const Icon(CupertinoIcons.heart_fill),
                          onPressed: () {},
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      )
                    ],
                  ),
                  Text(
                    '${product.price} تومان',
                    style: const TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
