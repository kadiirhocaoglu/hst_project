import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hst_project/product/constants/color_constants.dart';
import 'package:hst_project/product/constants/string_constants.dart';

import '../../../view_models/controllers/login/login_view_model.dart';

class LoginRememberMe extends GetView<LoginController> {
  LoginRememberMe({super.key});


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(StringConstants.rememberMe),
        Obx(() => Switch(
              value: controller.rememberMeIsSelected.value,
              onChanged: controller.toggleSwitch,
              activeColor: ColorConstants.primary,
            )),
      ],
    );
  }
}
