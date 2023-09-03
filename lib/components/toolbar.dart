// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:login_page1/styles/app_text.dart';

import '../styles/app_colors.dart';

class Toolbar extends StatelessWidget implements PreferredSizeWidget {
  //this widget is implemented as preferredsized widget then it returns the size required for this as well
  final String title;
  final List<Widget>? actions;
  const Toolbar({super.key, required this.title, this.actions});
//didnt add required before this.actions as we defined actions as ? nullable
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.background,
      title: Text(
        title,
        style: AppText.header1,
      ),
      centerTitle: false,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60);
}
