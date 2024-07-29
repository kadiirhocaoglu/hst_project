import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hst_project/product/constants/string_constants.dart';
import 'package:hst_project/product/enums/custom_size_constants.dart';
import 'package:hst_project/product/widget/appbar/custom_app_bar.dart';
import 'package:hst_project/product/widget/button/custom_button.dart';
import 'package:hst_project/product/widget/check/custom_switch.dart';
import 'package:hst_project/product/widget/button/custom_text_button.dart';
import 'package:hst_project/product/widget/texts/custom_text_field.dart';
import 'package:hst_project/view/login/widgets/login_button.dart';
import 'package:hst_project/view/login/widgets/login_forgetten_password_widget.dart';
import 'package:hst_project/view/login/widgets/login_input_phone_number_widget.dart';
import 'package:hst_project/view/login/widgets/login_input_password_widget.dart';
import 'package:hst_project/view/login/widgets/login_remember_me.dart';
import 'package:hst_project/view_models/controllers/login/login_view_model.dart';

class LoginView extends GetView<LoginController> {

  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.getCustomAppBar(),
      body: Padding(
        padding: CustomSizeConstants.low.padding,
        child: Column(children: [
          Form(
            key: controller.loginFormKey,
            onChanged: controller.onFormChange,
            child: Column(
              children: [
                LoginInputPhoneNumberWidget(),
                LoginInputPasswordWidget(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [LoginForgettenPassword(), LoginRememberMe()],
                ),
                LoginButton()
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
