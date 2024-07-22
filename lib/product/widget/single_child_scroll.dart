 import 'package:flutter/material.dart';
import 'package:hst_project/product/constants/string_constants.dart';
import 'package:hst_project/product/enums/custom_size_constants.dart';
import 'package:hst_project/product/widget/texts/custom_text_field.dart';
 class CustomSingleChild extends SingleChildScrollView{

  static SingleChildScrollView? getCustomSingleChildScrollView(){
        child: Padding(
          padding: CustomSizeConstants.medium.paddingHorizontal,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //TODO header title to login
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
                    //child: SignupCheckBox(),
                  ),
                  //_SignupButton(),
                  //_SignupAlreadySignin()
                ],
              )
            ],
          ),
        );
    }
 }