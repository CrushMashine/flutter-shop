import 'package:flutter/material.dart';
import '../../../constants.dart';

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isActive;
  final VoidCallback onPress;
  const ColorDot({
    Key? key,
    required this.color,
    required this.isActive,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        padding: const EdgeInsets.all(defaultPadding / 4),
        decoration: BoxDecoration(
            border:
                Border.all(color: isActive ? primaryColor : Colors.transparent),
            shape: BoxShape.circle),
        child: CircleAvatar(
          radius: 10,
          backgroundColor: color,
        ),
      ),
    );
  }
}
