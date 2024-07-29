import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hst_project/product/constants/color_constants.dart';
import 'package:hst_project/product/constants/string_constants.dart';
import 'package:hst_project/view_models/controllers/login/login_view_model.dart';

class LoginButton extends StatelessWidget {
  LoginButton({super.key});

  final loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: loginController.loginButtonOnPressed, 
      child: Text("") );
      
  }
}