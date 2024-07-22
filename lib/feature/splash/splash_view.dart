import 'package:flutter/material.dart';
import 'package:hst_project/product/widget/decorations/custom_box_decoration_items.dart';
import 'package:hst_project/product/widget/texts/custom_title_logo.dart';


class SplashView extends StatefulWidget {
  @override
  State<SplashView> createState() => _SplashViewState();
}
class _SplashViewState extends State<SplashView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: CustomBoxDecorationItems.getLinearGradient()),
        child: Center(child: CustomTitleLogo()) ,),
    );
  }
  }



