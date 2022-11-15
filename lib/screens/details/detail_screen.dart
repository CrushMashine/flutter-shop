import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:flutter_shop/constants.dart';

import '../../models/product.dart';
import 'components/color_dot.dart';

class DetailScreen extends StatelessWidget {
  final Product product;
  const DetailScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.bgColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const BackButton(
          color: Colors.black,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: defaultPadding / 2),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/icons/Heart.svg',
                  height: 20,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Column(children: [
        Image.asset(
          product.image,
          height: MediaQuery.of(context).size.height * 0.4,
          fit: BoxFit.cover,
        ),
        const SizedBox(
          height: defaultPadding * 1.5,
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.fromLTRB(defaultPadding * 2,
                defaultPadding * 2, defaultPadding * 2, defaultPadding),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(defaultBorderRadius * 3),
                topRight: Radius.circular(defaultBorderRadius * 3),
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(product.text,
                            style: Theme.of(context).textTheme.headline6),
                      ),
                      const SizedBox(
                        width: defaultPadding,
                      ),
                      Text('\$${product.price}',
                          style: Theme.of(context).textTheme.headline6),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: defaultPadding),
                    child: Text(
                        'A Henley shirt is a collarless pullover shirt, by a round neckline and a placket about 3 to 5 inches (8 to 13 cm) long and usually having 2–5 buttons.'),
                  ),
                  const Text(
                    'Colors',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                  const SizedBox(height: defaultPadding / 2),
                  Row(
                    children: [
                      ColorDot(
                        color: const Color(0xFFBEE8EA),
                        isActive: false,
                        onPress: () {},
                      ),
                      ColorDot(
                        color: const Color(0xFF141B4A),
                        isActive: true,
                        onPress: () {},
                      ),
                      ColorDot(
                        color: const Color(0xFFF4E5C3),
                        isActive: false,
                        onPress: () {},
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: defaultPadding * 1.5,
                  ),
                  Center(
                    child: SizedBox(
                      width: 200,
                      height: 48,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: primaryColor,
                            shape: const StadiumBorder()),
                        child: const Text('Add to cart'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
