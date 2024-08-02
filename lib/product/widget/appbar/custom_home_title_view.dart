import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hst_project/product/constants/color_constants.dart';
import 'package:hst_project/product/enums/custom_size_constants.dart';
import 'package:hst_project/view_models/controllers/home/home_view_model.dart';
import '../texts/custom_title_logo.dart';

class CustomHomeTitleView extends GetView<HomeController> {
  const CustomHomeTitleView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: CustomSizeConstants.low.paddingHorizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        IconButton(onPressed: controller.assistantOnPressed, icon: Icon(Icons.assistant, color: ColorConstants.zambak,)),
        CustomTitleLogo(),
        IconButton(onPressed: controller.notificationsOnPressed, icon: Icon(Icons.notifications, color: ColorConstants.zambak),)
      ],),
    );
  }
}