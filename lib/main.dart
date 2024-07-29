import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get/get.dart';
import 'package:hst_project/res/routes/app_routes.dart';
import 'package:hst_project/res/routes/routes_constants.dart';
import 'package:hst_project/view/home/home_view.dart';
import 'package:hst_project/view/login/login_view.dart';
import 'package:hst_project/view/splash/splash_view.dart';
import 'package:hst_project/view_models/bindings/login_binding.dart';



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
      title: 'HSTPos',
      //translations: Languages(),
      //locale: const Locale('en' ,'US'),
      //fallbackLocale: const Locale('en' ,'US'),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: RoutesConstants.dashboardView,
      getPages: AppRoutes.appRoutes(),
      home: SplashView(),
      //initialBinding: LoginBinding(),
    );
  }
}

