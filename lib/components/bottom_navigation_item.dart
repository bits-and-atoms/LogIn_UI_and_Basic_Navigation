// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login_page1/pages/main_page.dart';

class bottomNavigationitem extends StatelessWidget {
  final VoidCallback onPressed;
  final String icon;
  final menus current;
  final menus name;
  const bottomNavigationitem(
      {super.key,
      required this.onPressed,
      required this.icon,
      required this.current,
      required this.name});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: SvgPicture.asset(
        icon,
        colorFilter: ColorFilter.mode(
            current == name ? Colors.black : Colors.black.withOpacity(0.3),
            BlendMode.srcIn),
      ),
    );
  }
}
