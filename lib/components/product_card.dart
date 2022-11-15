import 'package:flutter/material.dart';

import '../constants.dart';

class ProductCard extends StatelessWidget {
  final String title;
  final String image;
  final int price;
  final Color bgColor;
  final VoidCallback onPress;
  const ProductCard({
    Key? key,
    required this.title,
    required this.image,
    required this.price,
    required this.bgColor,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        padding: const EdgeInsets.all(defaultPadding / 2),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(defaultBorderRadius),
          ),
        ),
        width: 154,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: bgColor,
                  borderRadius: BorderRadius.circular(defaultBorderRadius)),
              height: 140,
              child: Image.asset(image),
            ),
            const SizedBox(height: defaultPadding / 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(color: Colors.black),
                  ),
                ),
                const SizedBox(
                  width: defaultPadding / 4,
                ),
                Text(
                  "\$$price",
                  style: Theme.of(context)
                      .textTheme
                      .subtitle2!
                      .copyWith(fontWeight: FontWeight.w600),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
