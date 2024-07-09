import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hst_project/product/constants/color_constants.dart';
import 'package:hst_project/product/constants/string_constants.dart';
import 'package:hst_project/product/enums/image_constants.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:hst_project/product/widget/wawy_text.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<SplashView> createState() => _SplashViewState();
}


class _SplashViewState extends State<SplashView> {

/*

  const SplashView({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: ColorConstants.primary,
      body: Center(
        child: Column(children: [
          Image.asset(IconConstants.hst_logo.toPng),
          Text(
            StringConstants.appName,
            style: Theme.of(context)
                .primaryTextTheme
                .headlineSmall
                ?.copyWith(color: ColorConstants.white),
          ),
          WawyText(title: "Welcome") 
        ]),
      ),
    );
  }
}*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.primary,
      body: Center(
        child: Column(children: [
          Image.asset(IconConstants.hst_logo.toPng),
          Text(
            StringConstants.appName,
            style: Theme.of(context)
                .primaryTextTheme
                .headlineSmall
                ?.copyWith(color: ColorConstants.white),
          ),
          WawyText(title: "İnternet bağlantını kontrol ediyoruz...", description: "Güvenli ödemeye çok az kaldı...") 
        ]),
      ),
    );
  }
  }



