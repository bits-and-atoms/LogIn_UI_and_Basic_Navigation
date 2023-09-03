// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print, use_key_in_widget_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:login_page1/config/app_routes.dart';
// import 'package:login_page1/pages/edit_profile_page.dart';
// import 'package:login_page1/pages/home_page.dart';
// import 'package:login_page1/pages/login_page.dart';
// import 'package:login_page1/pages/main_page.dart';
import 'package:login_page1/styles/app_colors.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          fontFamily: 'Urbanist',
          scaffoldBackgroundColor: AppColors.background,
          brightness: Brightness.dark),
      //custom font added,
      initialRoute: AppRoutes.login,
      routes: AppRoutes.pages,
    );
  }
}
