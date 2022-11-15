import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  final String text;
  final VoidCallback onPress;
  const SectionTitle({
    Key? key,
    required this.text,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text,
            style: Theme.of(context)
                .textTheme
                .subtitle1!
                .copyWith(color: Colors.black, fontWeight: FontWeight.w700)),
        TextButton(
          onPressed: onPress,
          child: Text('See All',
              style: Theme.of(context).textTheme.subtitle1!.copyWith(
                  color: Colors.black54, fontWeight: FontWeight.w500)),
        )
      ],
    );
  }
}
