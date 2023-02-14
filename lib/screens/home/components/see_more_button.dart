import 'package:flutter/material.dart';

import '../../../constants.dart';

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
