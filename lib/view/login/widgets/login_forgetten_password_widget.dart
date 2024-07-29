import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hst_project/product/constants/string_constants.dart';
import 'package:hst_project/view_models/controllers/login/login_view_model.dart';
class LoginForgettenPassword extends GetView<LoginController> {
  LoginForgettenPassword({super.key});
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: controller.forgettenPasswordOnPressed, 
      child: Text(StringConstants.forgetPassword),

    );
  }
}