import 'package:flutter/material.dart';

import '../../product/utility/constants/image_path.dart';
import '../../product/utility/constants/light_color.dart';
import '../../product/widget/button/button_view.dart';
import '../../product/widget/input/textfield_view.dart';
import '../../product/widget/text/text_view.dart';
import 'login_string.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: registerPadding().horizontalPadding,
        child: Column(
          children: [

            Padding(
              padding:registerPadding().topPadding50,
              child: Center(child: TextView(textColor: LightColor().textColor, textSize: 20, textFontWeight: FontWeight.w900, text: LoginString.signUp, textAlign: TextAlign.center)),
            ),

            Padding(
                padding: EdgeInsets.only(top: 35),
                child: Center(child: Image.asset(ImagePath().loginImg))),


            Padding(
              padding:  registerPadding().topPadding50,
              child: TextFieldView(keyboardType: TextInputType.emailAddress, hintText: LoginString.emailaddress, obscuringCharacter: " ",  ),
            ),
            Padding(
              padding: registerPadding().topPadding,
              child: TextFieldView(keyboardType: TextInputType.visiblePassword, hintText: LoginString.password, obscuringCharacter: "*",  ),
            ),


            Padding(
              padding:registerPadding().topPadding50,
              child: ButtonView(text: LoginString.signUp, height: 55, buttonWidth: 400),
            ),


            Padding(
              padding: const EdgeInsets.only(top:15.0),
              child: Row(children: [
                TextView(text:LoginString.haventAccount, textSize: 16, textFontWeight: FontWeight.normal, textColor: LightColor().textColor,textAlign: TextAlign.center),
                SizedBox(width: 10),
                TextButton(onPressed: (){}, child:
                TextView(text: LoginString.register, textSize: 16, textFontWeight: FontWeight.w900, textColor: LightColor().orange,textAlign: TextAlign.center),
                )
              ],),
            )
          ],
        ),
      ),
    );
  }
}

class registerPadding{
  final EdgeInsets topPadding=EdgeInsets.only(top: 10);
  final EdgeInsets topPadding50=EdgeInsets.only(top: 50);
  final EdgeInsets horizontalPadding=EdgeInsets.symmetric(horizontal: 20);
}