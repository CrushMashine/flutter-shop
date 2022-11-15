import 'package:flutter/material.dart';
import 'package:flutter_shop/models/category.dart';
import 'package:flutter_svg/svg.dart';
import '../constants.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          categories.length,
          (index) => Padding(
            padding: const EdgeInsets.only(right: defaultPadding),
            child: CategoryCard(
              icon: categories[index].icon,
              title: categories[index].title,
              press: () {},
            ),
          ),
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String title;
  final String icon;
  final VoidCallback press;
  const CategoryCard({
    Key? key,
    required this.title,
    required this.icon,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(defaultBorderRadius),
          ),
        ),
        onPressed: press,
        child: Padding(
          padding: const EdgeInsets.symmetric(
              vertical: defaultPadding / 2, horizontal: defaultPadding / 4),
          child: Column(
            children: [
              SvgPicture.asset(icon),
              const SizedBox(
                height: defaultBorderRadius / 2,
              ),
              Text(
                title,
                style: Theme.of(context).textTheme.labelLarge,
              )
            ],
          ),
        ));
  }
}
