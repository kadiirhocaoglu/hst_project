import 'package:flutter/material.dart';
import 'package:hst_project/product/constants/string_constants.dart';
import 'package:hst_project/product/widget/appbar/custom_app_bar.dart';
import 'package:hst_project/product/widget/button/custom_button.dart';
import 'package:hst_project/product/widget/button/custom_text_button.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.getCustomAppBar(),
      body: Center(child: ListView(children: [
        CustomButton(title: StringConstants.signIn),
        BoldTextButton(onPressed: (){}, child: Text(StringConstants.register))
      ],)
      ,),
    );
  }
}