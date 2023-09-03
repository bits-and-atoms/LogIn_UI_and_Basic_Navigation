// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:login_page1/components/app_text_field.dart';
import 'package:login_page1/components/toolbar.dart';
import 'package:login_page1/components/user_avatar.dart';
import 'package:login_page1/config/app_strings.dart';
import 'package:login_page1/styles/app_colors.dart';
import 'package:login_page1/styles/app_text.dart';

enum Gender { none, male, female, other }

class EditProfilePage extends StatefulWidget {
  EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  var gender = Gender.none;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(title: AppStrings.editProfile),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(children: [
            Stack(
              children: [
                //stack helps to position multiple widgets on top of each other
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: UserAvatar(
                    size: 120,
                  ),
                ),
                Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            color: AppColors.primary,
                            borderRadius: BorderRadius.all(Radius.circular(4))),
                        child: Icon(
                          Icons.edit,
                          size: 20,
                          color: Colors.black,
                        )))
              ],
            ),
            SizedBox(
              height: 60,
            ),
            AppTextField(hint: AppStrings.firstName),
            SizedBox(
              height: 16,
            ),
            AppTextField(hint: AppStrings.lastName),
            SizedBox(
              height: 16,
            ),
            AppTextField(hint: AppStrings.phoneNumber),
            SizedBox(
              height: 16,
            ),
            AppTextField(hint: AppStrings.location),
            SizedBox(
              height: 16,
            ),
            AppTextField(hint: AppStrings.birthday),
            SizedBox(
              height: 16,
            ),
            Container(
              padding: const EdgeInsets.only(left: 12, right: 12, top: 6),
              decoration: BoxDecoration(
                  color: AppColors.fieldColor,
                  borderRadius: BorderRadius.all(Radius.circular(16))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppStrings.gender,
                    style: AppText.body1.copyWith(
                      fontSize:
                          12, //copywith allows you to add some extra properties to the used class (here body1) apart from its own properties
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        //expanded allow its child to occupy all available space within its parent widget

                        child: RadioListTile(
                          title: Text(AppStrings.male),
                          value: Gender.male,
                          visualDensity: const VisualDensity(
                              horizontal: VisualDensity.minimumDensity,
                              vertical: VisualDensity.minimumDensity),
                          contentPadding: EdgeInsets.zero,
                          groupValue: gender,
                          onChanged: (value) {
                            setState(() {
                              gender = Gender.male;
                            });
                          },
                        ),
                      ),
                      Expanded(
                        child: RadioListTile(
                          //radiolisttitle is preferred over adding a row and including radio and text because the first one allows user to click anywhere in the radio region but the latter one only allows user to click on the radio circle
                          title: Text(AppStrings.female),
                          value: Gender.female,
                          visualDensity: const VisualDensity(
                              horizontal: VisualDensity.minimumDensity,
                              vertical: VisualDensity.minimumDensity),
                          contentPadding: EdgeInsets.zero,
                          groupValue: gender,
                          onChanged: (value) {
                            setState(() {
                              gender = Gender.female;
                            });
                          },
                        ),
                      ),
                      Expanded(
                        child: RadioListTile(
                          title: Text(AppStrings.other),
                          value: Gender.other,
                          visualDensity: const VisualDensity(
                              horizontal: VisualDensity.minimumDensity,
                              vertical: VisualDensity.minimumDensity),
                          contentPadding: EdgeInsets.zero,
                          groupValue: gender,
                          onChanged: (value) {
                            setState(() {
                              gender = Gender.other;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
