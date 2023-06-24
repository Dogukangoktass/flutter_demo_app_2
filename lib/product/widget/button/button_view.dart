import 'package:flutter/material.dart';

import '../../../screens/splash/splash_string.dart';

class ButtonView extends StatelessWidget {
  const ButtonView({super.key, required this.buttonWidth, required this.height, required this.text});
  final double buttonWidth;
  final double height;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: buttonWidth,
      height: height,
      child: ElevatedButton(
        style: ButtonStyle(
        ),
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}


