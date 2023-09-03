// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print

import 'package:flutter/material.dart';
import 'package:login_page1/components/toolbar.dart';
import 'package:login_page1/components/user_avatar.dart';
import 'package:login_page1/config/app_routes.dart';
import 'package:login_page1/config/app_strings.dart';
import 'package:login_page1/styles/app_text.dart';

enum ProfileMenu { edit, logout }

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(
        title: AppStrings.profile,
        actions: [
          PopupMenuButton<ProfileMenu>(
              onSelected: (value) {
                switch (value) {
                  case ProfileMenu.edit:
                    Navigator.of(context).pushNamed(AppRoutes.editProfile);
                    print(AppStrings.edit);
                    break;
                  case ProfileMenu.logout:
                    print('log out');
                    break;
                }
              },
              icon: const Icon(Icons.more_vert_rounded),
              itemBuilder: (context) {
                return [
                  PopupMenuItem(
                    value: ProfileMenu.edit,
                    child: Text(AppStrings.edit),
                  ),
                  PopupMenuItem(
                    value: ProfileMenu.logout,
                    child: Text(AppStrings.logout),
                  ),
                ];
              })
        ],
      ),
      body: Column(
        children: [
          UserAvatar(
            size: 90,
          ),
          SizedBox(
            height: 24,
          ),
          Text(
            'subham majumder',
            style: AppText.header2,
          ),
          SizedBox(
            height: 12,
          ),
          Text('india', style: AppText.subtitle3),
          SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text('72', style: AppText.header2),
                  Text(AppStrings.followers),
                ],
              ),
              Column(
                children: [
                  Text('114', style: AppText.header2),
                  Text(AppStrings.posts),
                ],
              ),
              Column(
                children: [
                  Text('100', style: AppText.header2),
                  Text(AppStrings.following),
                ],
              ),
            ],
          ),
          Divider(
            thickness: 1,
            height: 24,
          ),
        ],
      ),
    );
  }
}
