import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hst_project/product/constants/color_constants.dart';
import 'package:hst_project/product/constants/string_constants.dart';
import 'package:hst_project/product/enums/custom_size_constants.dart';
import 'package:hst_project/view_models/controllers/auth_main/auth_main_view_model.dart';

class AuthMainRegisterNavigator extends GetView<AuthMainController> {
  AuthMainRegisterNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: CustomSizeConstants.low.marginVertical,
      child: TextButton.icon(
        onPressed: controller.registerOnPressed,
        icon: Icon(Icons.person_add_outlined),
        label: Text(
          StringConstants.register,
          style: TextStyle(fontSize: CustomSizeConstants.medium.value, fontWeight: FontWeight.w600),
        ),
        style: ElevatedButton.styleFrom(
            side: BorderSide(color: ColorConstants.bgColor),
            fixedSize: Size(double.maxFinite, CustomSizeConstants.normalButtonHeight.value ),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12), ),
            backgroundColor: Colors.transparent,
            foregroundColor: ColorConstants.white),
      ),
    );
  }
}

