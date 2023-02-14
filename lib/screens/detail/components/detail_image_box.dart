import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:large/constants.dart';

class DetailImageBox extends StatelessWidget {
  const DetailImageBox(
      {super.key,
      required this.imageUrl,
      required this.constraints,
      required this.productColor});
  final String imageUrl;
  final BoxConstraints constraints;
  final Color productColor;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: constraints.maxHeight * .50,
          child: Positioned(
            top: 0,
            child: Container(
              height: constraints.maxHeight * .42,
              width: constraints.maxWidth,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: productColor,
              ),
              child: CachedNetworkImage(imageUrl: imageUrl, fit: BoxFit.cover),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          child: ListView.builder(
            itemCount: 10,
            shrinkWrap: true,
            itemBuilder: (context, index) => Container(
              height: constraints.maxHeight * .15,
              margin: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: kCommentColor,
                border: Border.all(color: productColor),
              ),
            ),
          ),
        )
      ],
    );
  }
}
