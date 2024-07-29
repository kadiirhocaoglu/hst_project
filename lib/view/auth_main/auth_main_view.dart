import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hst_project/product/constants/string_constants.dart';
import 'package:hst_project/product/enums/custom_size_constants.dart';
import 'package:hst_project/product/enums/image_constants.dart';
import 'package:hst_project/product/widget/button/custom_button.dart';
import 'package:hst_project/product/widget/button/custom_start_button.dart';
import 'package:hst_project/product/widget/button/custom_text_button.dart';
import 'package:hst_project/product/widget/button/custom_start_text_buttonn.dart';
import 'package:hst_project/product/widget/decorations/custom_box_decoration_items.dart';
import 'package:hst_project/product/widget/decorations/icon_logo_image.dart';
import 'package:hst_project/product/widget/texts/custom_text_field.dart';
import 'package:hst_project/product/widget/texts/custom_title_logo.dart';
import 'package:hst_project/view/auth_main/widgets/auth_main_login_navigator.dart';
import 'package:hst_project/view/auth_main/widgets/auth_main_register_navigator.dart';
import 'package:hst_project/view_models/controllers/auth_main/auth_main_view_model.dart';


class AuthMainView extends GetView<AuthMainController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: CustomSizeConstants.medium.padding,
        //TODO: maybe size constant but dont know context put
        height: Get.size.height,
        width: Get.size.width,
        decoration: CustomBoxDecorationItems.getBGGradient(),
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconLogoImage(width: Get.size.width / 3),
                Column(
                  children: [
                    AuthMainLoginNavigator(),
                    AuthMainRegisterNavigator()
                  ],
                ),
                const CustomTitleLogo(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
