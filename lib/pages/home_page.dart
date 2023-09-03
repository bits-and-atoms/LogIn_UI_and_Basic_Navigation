// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_page1/components/post_item.dart';
import 'package:login_page1/components/toolbar.dart';
import 'package:login_page1/config/app_icons.dart';
import 'package:login_page1/config/app_routes.dart';
import 'package:login_page1/config/app_strings.dart';
// import 'package:login_page1/styles/app_colors.dart';
// import 'package:login_page1/styles/app_text.dart';

// stless shortcut for creating stateless widget
class HomePage extends StatelessWidget {
  HomePage({super.key});
  List<String> users = [];
  @override
  Widget build(BuildContext context) {
    mockuserfromserver();
    return Scaffold(
      appBar: Toolbar(
        title: AppStrings.appName,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(AppRoutes.nearby);
              },
              icon: SvgPicture.asset(
                  AppIcons.icLocation)), //svg converted into an button
        ],
      ), //this gets the size as well because it toolbar is variable so appbar needs its size,
      body: ListView.separated(
        itemBuilder: (context, index) {
          return PostItem(user: users[index]);
        },
        itemCount: users.length,
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            height: 24,
          );
        },
      ),
      //use listview whenever need to present a list dont use column
    );
  }

  mockuserfromserver() {
    for (var i = 0; i < 100; i++) {
      users.add('user number $i');
    }
  }
}
