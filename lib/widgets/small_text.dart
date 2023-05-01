import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  final Color? color;
  final String text;
  final double size;
  final double heigth;
  final TextOverflow overflow;

  const SmallText(
      {Key? key,
      this.color = const Color(0xFFccc7c5),
      required this.text,
      this.size = 12,
      this.heigth = 1.2,
      this.overflow = TextOverflow.ellipsis})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      overflow: overflow,
      text,
      style: TextStyle(
          fontFamily: 'Roboto', color: color, fontSize: size, height: heigth),
    );
  }
}
