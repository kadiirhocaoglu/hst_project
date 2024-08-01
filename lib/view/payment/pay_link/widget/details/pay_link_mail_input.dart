import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:hst_project/product/constants/color_constants.dart';
import 'package:hst_project/product/constants/string_constants.dart';
import 'package:hst_project/view_models/controllers/payment/pay_link/pay_link_view_model.dart';

class PayLinkMailInput extends GetView<PayLinkController>{
  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(StringConstants.cardHolderMail),
        TextFormField(
          //controller: controller.emailController.value,
          //focusNode: controller.phoneNumberFocusNode.value,
          keyboardType: TextInputType.emailAddress,
          //validator:(String? value) => controller.checkNullandEmpty(value),
          // onFieldSubmitted: (value) {
          //   Utils.fieldFocusChange(
          //       context,
          //       controller.phoneNumberFocusNode.value,
          //       controller.passwordFocusNode.value);
          // },
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            filled: true, fillColor: ColorConstants.bgColor
          ),
        ),
      ],
    );
  }

}

