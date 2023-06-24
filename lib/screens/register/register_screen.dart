import 'package:flutter/material.dart';
import 'package:flutter_demo_app_2/product/widget/text/text_view.dart';
import 'package:flutter_demo_app_2/screens/register/register_string.dart';
import '../../product/utility/constants/light_color.dart';
import '../../product/widget/button/button_view.dart';
import '../../product/widget/input/textfield_view.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: registerPadding().horizontalPadding,
        child: Column(
          children: [
            Padding(
              padding:registerPadding().topPadding50,
              child: Center(child: TextView(textColor: LightColor().textColor, textSize: 20, textFontWeight: FontWeight.w900, text: RegisterString.invite, textAlign: TextAlign.center)),
            ),

            Padding(
              padding:  registerPadding().topPadding50,
              child: TextFieldView(keyboardType: TextInputType.name, hintText: RegisterString.firstName, obscuringCharacter: " ",  ),
            ),
            Padding(
              padding: registerPadding().topPadding,
              child: TextFieldView(keyboardType: TextInputType.name, hintText: RegisterString.lastName, obscuringCharacter: " ",  ),
            ),
            Padding(
              padding: registerPadding().topPadding,
              child: TextFieldView(keyboardType: TextInputType.datetime, hintText: RegisterString.birthday, obscuringCharacter: " ",  ),
            ),
            Padding(
              padding: registerPadding().topPadding,
              child: TextFieldView(keyboardType: TextInputType.emailAddress, hintText: RegisterString.emailaddress, obscuringCharacter: " ",  ),
            ),
            Padding(
              padding:registerPadding().topPadding,
              child: TextFieldView(keyboardType: TextInputType.name, hintText: RegisterString.username, obscuringCharacter: " ",  ),
            ),
            Padding(
              padding:registerPadding().topPadding,
              child: TextFieldView(keyboardType: TextInputType.visiblePassword, hintText: RegisterString.password, obscuringCharacter: "*",  ),
            ),

            Padding(
              padding:registerPadding().topPadding50,
              child: ButtonView(text: RegisterString.register, height: 55, buttonWidth: 400),
            ),

            Padding(
              padding: const EdgeInsets.only(top:15.0),
              child: Row(children: [
                TextView(text:RegisterString.haveaAccount, textSize: 16, textFontWeight: FontWeight.normal, textColor: LightColor().textColor,textAlign: TextAlign.center),
                SizedBox(width: 20),
              TextButton(onPressed: (){}, child:
              TextView(text: RegisterString.login, textSize: 16, textFontWeight: FontWeight.w900, textColor: LightColor().orange,textAlign: TextAlign.center),
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