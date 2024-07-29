import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:hst_project/product/constants/string_constants.dart';
import 'package:hst_project/utils/utils.dart';
import 'package:hst_project/view_models/controllers/login/login_view_model.dart';

class LoginInputPasswordWidget extends GetView<LoginController> {
  LoginInputPasswordWidget({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(StringConstants.password),
        TextFormField(
          controller: controller.passwordController.value,
          focusNode: controller.passwordFocusNode.value,
          validator: (String? value) => controller.checkPassword(value),
          keyboardType: TextInputType.number,
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
            LengthLimitingTextInputFormatter(6),
          ],
          obscureText: true,
         
          onFieldSubmitted: (value) {},
          decoration: InputDecoration(
            border: OutlineInputBorder(),
          ),
        ),
      ],
    );
  }
}
