// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_page1/components/bottom_navigation_item.dart';
import 'package:login_page1/config/app_icons.dart';
import 'package:login_page1/config/app_strings.dart';
import 'package:login_page1/pages/home_page.dart';
import 'package:login_page1/pages/profile_page.dart';
import 'package:login_page1/styles/app_colors.dart';

enum menus { home, favourite, add, messages, user }

class mainPage extends StatefulWidget {
  const mainPage({super.key});

  @override
  State<mainPage> createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {
  menus currentindex = menus.home;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody:
            true, //extendbody true tells that start the post page from bottom if its false then the posts will be displayed above the navigation buttons
        body: pages[currentindex.index],
        bottomNavigationBar: MyButtonNavigation(
          currentindex: currentindex,
          ontap: (value) {
            setState(() {
              currentindex = value;
            });
          },
        ));
  }

  final pages = [
    HomePage(),
    Center(
      child: Text(AppStrings.favorites),
    ),
    Center(
      child: Text(AppStrings.add),
    ),
    Center(
      child: Text(AppStrings.messages),
    ),
    ProfilePage(),
  ];
}

class MyButtonNavigation extends StatelessWidget {
  final menus currentindex;
  final ValueChanged<menus> ontap;
  const MyButtonNavigation({
    super.key,
    required this.currentindex,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 87,
      margin: EdgeInsets.all(24),
      child: Stack(
        children: [
          Positioned(
            right: 0,
            left: 0,
            top: 17,
            child: Container(
              height: 70,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(25)),
              ),
              child: Row(
                children: [
                  Expanded(
                      child: bottomNavigationitem(
                          onPressed: () => ontap(menus.home),
                          icon: AppIcons.icHome,
                          current: currentindex,
                          name: menus.home)),
                  Expanded(
                      child: bottomNavigationitem(
                          onPressed: () => ontap(menus.favourite),
                          icon: AppIcons.icFavorite,
                          current: currentindex,
                          name: menus.favourite)),
                  Spacer(), //used to add space but i dont have any thing to add in that space i just need the space to look good
                  Expanded(
                      child: bottomNavigationitem(
                          onPressed: () => ontap(menus.messages),
                          icon: AppIcons.icMessage,
                          current: currentindex,
                          name: menus.messages)),
                  Expanded(
                      child: bottomNavigationitem(
                          onPressed: () => ontap(menus.user),
                          icon: AppIcons.icUser,
                          current: currentindex,
                          name: menus.user)),
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: GestureDetector(
              onTap: () => ontap(menus.add),
              child: Container(
                width: 64,
                height: 64,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  shape: BoxShape.circle,
                ),
                child: SvgPicture.asset(AppIcons.icAdd),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
