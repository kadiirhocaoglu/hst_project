import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hst_project/product/constants/color_constants.dart';
import 'package:hst_project/product/constants/string_constants.dart';
import 'package:hst_project/product/enums/custom_size_constants.dart';
import 'package:hst_project/product/widget/decorations/custom_box_decoration_items.dart';
import 'package:hst_project/view_models/controllers/login/login_view_model.dart';

class RegisterNavigatorButton extends GetView<LoginController> {
  RegisterNavigatorButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: CustomSizeConstants.low.marginVertical,
      child: TextButton.icon(
        onPressed: controller.registerNavigatorOnPressed,
        icon: Icon(Icons.person_add_outlined),
        label: Text(
          StringConstants.register,
          style:CustomBoxDecorationItems.getNormalButtonTextStyle()),
        style: ElevatedButton.styleFrom(
            side: BorderSide(),
            fixedSize: Size(double.maxFinite, CustomSizeConstants.normalButtonHeight.value ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.all(CustomSizeConstants.low.radiusCircular)),
            backgroundColor: Colors.transparent,
            foregroundColor: ColorConstants.darkness),
      ),
    );
  }
}