import 'package:flutter/material.dart';
import 'package:flutter_demo_app_2/product/theme/light_theme.dart';
import 'package:flutter_demo_app_2/product/widget/navigation/navigation_view.dart';
import 'package:flutter_demo_app_2/screens/gallery/gallery_view.dart';
import 'package:flutter_demo_app_2/screens/login/login_screen.dart';
import 'package:flutter_demo_app_2/screens/register/register_screen.dart';
import 'package:flutter_demo_app_2/screens/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Mobile App Demo',
      theme: LightTheme().theme,
      home: const NavigationView(),
    );
  }
}
