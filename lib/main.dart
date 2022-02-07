// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:catalog_app/pages/home_page.dart';
import 'package:catalog_app/pages/login_page.dart';
import 'package:catalog_app/utils/routes.dart';
import 'package:catalog_app/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:catalog_app/widgets/themes.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    themeMode: ThemeMode.light,
    theme: MyTheme.lightTheme(context),
    darkTheme: MyTheme.Darktheme(context),
    debugShowCheckedModeBanner: false,
    initialRoute: MyRoutes.homeRoute,
    routes: {
      "/": (context) => LoginPage(),
      MyRoutes.homeRoute: (context) => HomePage(),
      MyRoutes.loginRoute: (context) => LoginPage(),
    },
    );
  }
}