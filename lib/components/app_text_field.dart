// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:login_page1/styles/app_colors.dart';

class AppTextField extends StatelessWidget {
  final String hint;
  const AppTextField({super.key, required this.hint});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: hint,
          labelText: hint, //when we tap the text field the hint goes upward
          labelStyle: TextStyle(color: Colors.white),
          border: UnderlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(12))),
          focusedBorder: const UnderlineInputBorder(
              //after tapping textfield these properties will be applied
              borderSide: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.all(Radius.circular(12))),
          filled: true,
          fillColor: AppColors.fieldColor),
    );
  }
}
