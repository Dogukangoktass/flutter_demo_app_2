import 'package:flutter/material.dart';
import 'package:flutter_demo_app_2/product/utility/constants/light_color.dart';
import 'package:flutter_demo_app_2/screens/splash/splash_string.dart';

import '../../product/utility/constants/image_path.dart';
import '../../product/widget/button/button_view.dart';
import '../../product/widget/text/text_view.dart';
class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.only(top: 150),
                child: Center(child: Image.asset(ImagePath().splashImg))),

            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: TextView(textColor: LightColor().textColor, textFontWeight: FontWeight.bold, textSize: 18, text:SplashString.splashTitle, textAlign: TextAlign.center,),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: TextView(textColor: LightColor().textColor, textFontWeight: FontWeight.normal, textSize: 16, text:SplashString.splashText, textAlign: TextAlign.center),

            ),

            Padding(
              padding: const EdgeInsets.only(top:40.0),
              child: ButtonView(text: SplashString.splashButton, height: 55, buttonWidth: 320),
            )
          ],
        ),
      ),
    );
  }
}
