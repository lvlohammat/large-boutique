import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class NewProductCard extends StatelessWidget {
  const NewProductCard({super.key, required this.constraints});
  final BoxConstraints constraints;

  @override
  Widget build(BuildContext context) {
    return Container(
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
              child: Image.network(
                  'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/5e3e800b-9e55-4f03-938d-2cf7292e3e2b/air-jordan-1-hi-flyease-mens-shoes-VjGcGX.png',
                  fit: BoxFit.cover),
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
                const Text(
                  'کفش جدید نایک ایرفورس مخصوص پیاده روی',
                  style: TextStyle(
                    fontSize: 15,
                    overflow: TextOverflow.ellipsis,
                  ),
                  maxLines: 2,
                ),
                Row(
                  children: [
                    const Text(
                      'کفش مردانه',
                      style: TextStyle(
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
                const Text(
                  '150000 تومان',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
