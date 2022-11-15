import 'package:flutter/material.dart';
import 'package:flutter_shop/components/product_card.dart';
import 'package:flutter_shop/components/section_title.dart';

import '../constants.dart';
import '../models/product.dart';

class Poplar extends StatelessWidget {
  const Poplar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: 'Poplar',
          onPress: () {},
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(products.length, (index) {
              final product = products[index];
              return Padding(
                padding: const EdgeInsets.only(right: defaultPadding),
                child: ProductCard(
                  title: product.text,
                  price: product.price,
                  bgColor: product.bgColor,
                  image: product.image,
                  onPress: () {},
                ),
              );
            }),
          ),
        )
      ],
    );
  }
}
