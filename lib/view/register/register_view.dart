import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:hst_project/product/enums/custom_size_constants.dart';
import 'package:hst_project/product/widget/appbar/custom_app_bar.dart';
import 'package:hst_project/product/widget/button/need_help_assistant.dart';
import 'package:hst_project/view/register/widgets/register_aggre_terms_button.dart';
import 'package:hst_project/view/register/widgets/register_button.dart';
import 'package:hst_project/view/register/widgets/register_header_title.dart';
import 'package:hst_project/view/register/widgets/register_input_email_widget.dart';
import 'package:hst_project/view/register/widgets/register_input_name_surname_widget.dart';
import 'package:hst_project/view/register/widgets/register_input_password_widget.dart';
import 'package:hst_project/view/register/widgets/register_input_phone_number_widget.dart';
import 'package:hst_project/view/register/widgets/register_input_website_widget.dart';
import 'package:hst_project/view_models/controllers/register/register_view_model.dart';


class RegisterView extends GetView<RegisterController> {
  final controller = Get.put(RegisterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.getCustomAppBar(),
      body: Padding(
        padding: CustomSizeConstants.middleLow.padding,
        child: SingleChildScrollView(
          child: Form(
            key: controller.registerFormKey,
            onChanged: controller.onFormChange,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                RegisterHeaderTitle(),
                RegisterInputNameSurnameWidget(),
                RegisterInputEmailWidget(),
                RegisterInputPhoneNumberWidget(),
                RegisterInputWebsiteWidget(),
                RegisterInputPasswordWidget(),
                RegisterAggreTermsButton(),
                RegisterButton(),
                NeedHelpAssistant()
                
              ],
            ),
          ),
        ),
      ),
    );

  }
}