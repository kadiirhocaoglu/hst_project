import 'package:flutter/material.dart';
import 'package:hst_project/product/constants/string_constants.dart';
import 'package:hst_project/product/widget/appbar/custom_app_bar.dart';
import 'package:hst_project/product/widget/button/custom_button.dart';
import 'package:hst_project/product/widget/check/custom_switch.dart';
import 'package:hst_project/product/widget/button/custom_text_button.dart';
import 'package:hst_project/product/widget/texts/custom_text_field.dart';
import 'package:kartal/kartal.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
      bool isSelected = false;

void toggleSwitch(bool value){
    setState(() {
      isSelected=!isSelected;
    });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.getCustomAppBar(),
      body: Padding(
        padding: context.padding.low,
        child: Column(children: [
          CustomTextField(
            title: StringConstants.phoneNumber,
            controller: TextEditingController(),
            keytype: TextInputType.number,
          ),
          CustomTextField(
              title: StringConstants.password,
              controller: TextEditingController(),
              obscureText: true,
              keytype: TextInputType.number),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BoldTextButton(
                onPressed: () {},
                child: Text(StringConstants.forgetPassword),
              ),
              Row(
                children: [
                  Text(StringConstants.rememberMe),
                  CustomSwitch(value: isSelected, onChanged: toggleSwitch)
                ],
              )
            ],
          ),
          CustomButton(title: StringConstants.signIn),
        ]),
      ),
    );
  }

 
}
