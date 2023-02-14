import 'package:flutter/material.dart';

import '../../../constants.dart';

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
