import 'package:flutter/material.dart';

class TextView extends StatelessWidget {
  const TextView({
    super.key, required this.textColor, required this.textSize, required this.textFontWeight, required this.text, required this.textAlign,
  });
  final Color textColor;
  final double textSize;
  final FontWeight textFontWeight;
  final String text;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(
        color: textColor,
        fontSize: textSize,
        fontWeight:textFontWeight
    ),
      textAlign: textAlign,
    );
  }
}
