import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get/get.dart';
import 'package:hst_project/product/constants/color_constants.dart';
import 'package:hst_project/product/constants/string_constants.dart';
import 'package:hst_project/res/routes/app_routes.dart';
import 'package:hst_project/res/routes/routes_constants.dart';
import 'package:hst_project/view/auth_main/auth_main_view.dart';
import 'package:hst_project/view/dashboard/dashboard_view.dart';
import 'package:hst_project/view/home/home_view.dart';
import 'package:hst_project/view/login/login_view.dart';
import 'package:hst_project/view/register/register_view.dart';
import 'package:hst_project/view/splash/splash_view.dart';
import 'package:hst_project/view_models/bindings/auth_main_binding.dart';
import 'package:hst_project/view_models/bindings/dashboard_binding.dart';
import 'package:hst_project/view_models/bindings/home_binding.dart';
import 'package:hst_project/view_models/bindings/login_binding.dart';
import 'package:hst_project/view_models/bindings/register_binding.dart';



void main() {
  runApp(
    HstApp()
  );
}

class HstApp extends StatelessWidget {
  const HstApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: StringConstants.appName,
      //translations: Languages(),
      //locale: const Locale('en' ,'US'),
      //fallbackLocale: const Locale('en' ,'US'),
      theme: ThemeData(colorScheme: ColorScheme(brightness: Brightness.light, primary: ColorConstants.darkness, onPrimary: ColorConstants.zambak, secondary: ColorConstants.secondary, onSecondary: ColorConstants.cardGradientColor, error: ColorConstants.error, onError: ColorConstants.gradientEndColor
      , surface: ColorConstants.bgColor, onSurface: ColorConstants.onSurface)),
      initialRoute: RoutesConstants.authMainView,
      getPages: AppRoutes.appRoutes(),
      home: DashboardView(),
      initialBinding: AuthMainBinding(),
    );
  }
}

