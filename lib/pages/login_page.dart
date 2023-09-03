// ignore_for_file: prefer_const_constructors, camel_case_types, avoid_print, unused_local_variable

import 'package:flutter/material.dart';
import 'package:login_page1/config/app_icons.dart';
import 'package:login_page1/config/app_routes.dart';
import 'package:login_page1/config/app_strings.dart';
// import 'package:http/http.dart' as http;

// import 'package:login_ page1/pages/home_page.dart';
// const baseUrl = 'http://localhost:8080';

class loginpage extends StatelessWidget {
  // final loginRoute = '$baseUrl/login';
  const loginpage({super.key});
  @override
  Widget build(BuildContext context) {
    // dologin();
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context)
              .size
              .height, //dynamically finds the height of the device
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(children: [
              Spacer(), // helps to adjust according to different screens
              Text(
                AppStrings.helloWelcome,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Text(AppStrings.loginToContinue,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  )),
              Spacer(),
              TextField(
                decoration: InputDecoration(
                    hintText: AppStrings.username,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.5)),
              ),
              SizedBox(
                height: 16,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: AppStrings.password,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.5)),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                    onPressed: () {
                      print('clicked forgot password');
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                    ),
                    child: Text(AppStrings.forgotPassword)),
              ),
              SizedBox(
                height: 32,
              ),
              SizedBox(
                height: 48,
                width: double
                    .infinity, //helps to fill login button in available space
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed(AppRoutes
                          .main); //if you use pushnamed then it will allow a go back option at top left but as after login i should not go back to login page so i used pushreplacementnamed
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.black,
                    ),
                    child: Text(AppStrings.login)),
              ),
              Spacer(),
              Text(
                AppStrings.orSignInWith,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              SizedBox(
                height: 48,
                child: ElevatedButton(
                  onPressed: () {
                    print('Log in with google used');
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                      )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        AppIcons.icGoogle,
                        width: 40,
                        height: 40,
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Text(AppStrings.loginWithGoogle),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              SizedBox(
                height: 48,
                child: ElevatedButton(
                    onPressed: () {
                      print('Log in with facebook used');
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(50),
                          ),
                        )),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          AppIcons.icFacebook,
                          width: 40,
                          height: 40,
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Text(AppStrings.loginWithFacebook),
                      ],
                    )),
              ),
              Row(
                children: [
                  Text(
                    AppStrings.dontHaveAccount,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.amber,
                      ),
                      child: Text(
                        AppStrings.signup,
                        style: TextStyle(decoration: TextDecoration.underline),
                      )),
                ],
              ),
              Spacer(),
            ]),
          ),
        ),
      ),
    );
  }
}
//   Future<String> dologin() async {
//     final response = await http.post(Uri.parse(
//         loginRoute)); //used uri as loginroute is in string but we need to parse it as uri
//     if (response.statusCode == 200) {
//       print(response.body);
//       return response.body;
//     } else {
//       print('you have error');
//       throw Exception('error');
//     }
//   }
// }
