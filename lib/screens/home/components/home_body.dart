import 'package:flutter/material.dart';
import 'package:large/constants.dart';
import 'package:large/screens/home/components/new_product_card.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: LayoutBuilder(
        builder: (p0, constraints) => SingleChildScrollView(
          child: Column(
            children: [
              TopBanner(constraints: constraints),
              const SeeMoreTextButton(
                title: 'محصولات جدید',
              ),
              defaultHeightPadding(constraints),
              NewProductCards(
                constraints: constraints,
              ),
              defaultHeightPadding(constraints),
              const SeeMoreTextButton(title: 'محصولات پرفروش'),
              defaultHeightPadding(constraints),
              NewProductCards(constraints: constraints),
            ],
          ),
        ),
      ),
    );
  }

  SizedBox defaultHeightPadding(BoxConstraints constraints) {
    return SizedBox(
      height: constraints.maxHeight * .02,
    );
  }
}

class NewProductCards extends StatelessWidget {
  const NewProductCards({
    super.key,
    required this.constraints,
  });
  final BoxConstraints constraints;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NewProductCard(constraints: constraints),
          NewProductCard(constraints: constraints),
          NewProductCard(constraints: constraints),
        ],
      ),
    );
  }
}

class SeeMoreTextButton extends StatelessWidget {
  const SeeMoreTextButton({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title),
        const Text(
          'همه',
          style: TextStyle(
              color: kCommentColor, fontWeight: FontWeight.w300, fontSize: 16),
        )
      ],
    );
  }
}

class TopBanner extends StatelessWidget {
  const TopBanner({
    super.key,
    required this.constraints,
  });
  final BoxConstraints constraints;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: constraints.maxWidth,
      height: constraints.maxHeight * .25,
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: kContainerBgColor,
        borderRadius: BorderRadius.circular(30),
      ),
    );
  }
}
