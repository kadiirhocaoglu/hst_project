import 'package:get/get.dart';
import 'package:hst_project/product/constants/string_constants.dart';
import 'package:hst_project/view_models/controllers/register/register_view_model.dart';
import 'package:flutter/material.dart';

class RegisterInputWebsiteWidget extends GetView<RegisterController> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(StringConstants.website),
        TextFormField(
          controller: controller.webSiteController.value,
          //focusNode: controller.phoneNumberFocusNode.value,
          keyboardType: TextInputType.emailAddress,
          validator: (String? value) => controller.checkNullandEmpty(value),
          // onFieldSubmitted: (value) {
          //   Utils.fieldFocusChange(
          //       context,
          //       controller.phoneNumberFocusNode.value,
          //       controller.passwordFocusNode.value);
          // },
          decoration: InputDecoration(
            border: OutlineInputBorder(),
          ),
        ),
      ],
    );
  }
}