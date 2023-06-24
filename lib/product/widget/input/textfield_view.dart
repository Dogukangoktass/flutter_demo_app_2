import 'package:flutter/material.dart';

class TextFieldView extends StatelessWidget {
  const TextFieldView({super.key, required this.keyboardType, required this.hintText, this.obscuringCharacter});

  //final AutofillHints autofillHints;
  final TextInputType keyboardType;
  final String hintText;
  final String? obscuringCharacter;
  @override
  Widget build(BuildContext context) {
    return TextField(
      //controller: widget.controller,
      onTap: (){},
     // autofillHints: [autofillHints.toString()],
      keyboardType: keyboardType,
      obscuringCharacter: obscuringCharacter.toString(),
      textAlign: TextAlign.center,
      //obscureText: _isSecure,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(width: 3, color: Colors.black),
          borderRadius: BorderRadius.circular(50.0),
        ),
        hintText: hintText,
      ),
    );
  }
}
