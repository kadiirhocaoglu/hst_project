import 'package:flutter/material.dart';
import 'package:hst_project/product/constants/string_constants.dart';
import 'package:hst_project/product/enums/custom_size_constants.dart';
import 'package:hst_project/product/widget/appbar/custom_app_bar.dart';
import 'package:hst_project/product/widget/button/custom_button.dart';
import 'package:hst_project/product/widget/button/custom_text_button.dart';
import 'package:hst_project/product/widget/check/custom_check_box.dart';
import 'package:hst_project/product/widget/texts/custom_text.dart';
import 'package:hst_project/product/widget/texts/custom_text_field.dart';
import 'package:hst_project/product/widget/texts/header_title.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.getCustomAppBar(),
      body: SingleChildScrollView(child: Padding(
          padding: CustomSizeConstants.medium.paddingHorizontal,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomHeaderTitle(title: StringConstants.registerHeaderTitle, subtitle: StringConstants.registerHeaderSubtitle),
              Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(
                              right: CustomSizeConstants.verylow.value),
                          child: CustomTextField(
                              title: StringConstants.name,
                              controller: TextEditingController()),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: CustomSizeConstants.verylow.value),
                          child: CustomTextField(
                              title: StringConstants.surname,
                              controller: TextEditingController()),
                        ),
                      ),
                    ],
                  ),
                  CustomTextField(
                      title: StringConstants.email,
                      controller: TextEditingController()),
                  CustomTextField(
                      title: StringConstants.phoneNumber,
                      controller: TextEditingController()),
                  CustomTextField(
                      title: StringConstants.website,
                      controller: TextEditingController()),
                  CustomTextField(
                      title: StringConstants.password,
                      controller: TextEditingController(),
                      obscureText: true),
                  Padding(
                    padding: CustomSizeConstants.verylow.paddingHorizontal,
                    child: SignupCheckBox(),
                  ),
                  CustomButton(title: StringConstants.register),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText.getTextBold(StringConstants.needHelp),
                      BoldTextButton(onPressed: (){}, child: CustomText.getTextBold(StringConstants.hstAsistant ))
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );

  }
}