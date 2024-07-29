import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hst_project/product/enums/custom_size_constants.dart';
import 'package:hst_project/product/widget/appbar/custom_app_bar.dart';
import 'package:hst_project/view/login/widgets/login_button.dart';
import 'package:hst_project/view/login/widgets/login_divider.dart';
import 'package:hst_project/view/login/widgets/login_forgetten_password_widget.dart';
import 'package:hst_project/view/login/widgets/login_header_title.dart';
import 'package:hst_project/view/login/widgets/login_input_password_widget.dart';
import 'package:hst_project/view/login/widgets/login_input_phone_number_widget.dart';
import 'package:hst_project/view/login/widgets/login_remember_me.dart';
import 'package:hst_project/product/widget/button/need_help_assistant.dart';
import 'package:hst_project/view/login/widgets/register_navigator_button.dart';
import 'package:hst_project/view_models/controllers/login/login_view_model.dart';

class LoginView extends GetView<LoginController> {

  final controller = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.getCustomAppBar(),
      body: Padding(
        padding: CustomSizeConstants.middleLow.padding,
        child: SingleChildScrollView(
          child: Column(
            children: [
            Form(
              key: controller.loginFormKey,
              onChanged: controller.onFormChange,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  LoginHeaderTitle(),
                  LoginInputPhoneNumberWidget(),
                  LoginInputPasswordWidget(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [LoginForgettenPassword(), LoginRememberMe()],
                  ),
                  LoginButton(),
                  LoginDivider(),
                  RegisterNavigatorButton(),
                  NeedHelpAssistant()
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
