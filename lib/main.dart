import 'package:flutter/material.dart';
import 'package:hst_project/feature/login/login_view.dart';
import 'package:hst_project/feature/register/register_view.dart';
import 'package:hst_project/feature/splash/splash_view.dart';
import 'package:hst_project/feature/starter/start_page.dart';
import 'package:hst_project/product/constants/color_constants.dart';
import 'package:hst_project/product/constants/string_constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: ColorConstants.primary),
        useMaterial3: true,
      ),
      home: StartPage(),
    );
  }
}


