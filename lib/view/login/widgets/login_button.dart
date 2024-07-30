import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hst_project/product/constants/color_constants.dart';
import 'package:hst_project/product/constants/string_constants.dart';
import 'package:hst_project/product/enums/custom_size_constants.dart';
import 'package:hst_project/view_models/controllers/login/login_view_model.dart';

class LoginButton extends GetView<LoginController> {
  LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: CustomSizeConstants.low.marginVertical,
      child: TextButton.icon(
        onPressed: controller.loginButtonOnPressed,
        icon: Icon(Icons.lock_outline),
        label: Text(
          StringConstants.signIn,
          style: TextStyle(fontSize: CustomSizeConstants.medium.value, fontWeight: FontWeight.w600),
        ),
        style: ElevatedButton.styleFrom(
            fixedSize: Size(double.maxFinite, CustomSizeConstants.normalButtonHeight.value ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.all(CustomSizeConstants.low.radiusCircular)),
            backgroundColor: ColorConstants.logoDarkGreen,
            foregroundColor: Colors.white),
      ),
    );
  }
}