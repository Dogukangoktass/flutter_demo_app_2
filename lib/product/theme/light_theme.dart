import 'package:flutter/material.dart';

import '../utility/constants/light_color.dart';

class LightTheme{
final _lightColor=LightColor();
late ThemeData theme;

  LightTheme(){
    theme=ThemeData(



      scaffoldBackgroundColor: _lightColor.scaffoldBackground,
      floatingActionButtonTheme: FloatingActionButtonThemeData(backgroundColor: _lightColor.orange),
      elevatedButtonTheme: ElevatedButtonThemeData(style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xffFF8719),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0))))


    );
  }

}



