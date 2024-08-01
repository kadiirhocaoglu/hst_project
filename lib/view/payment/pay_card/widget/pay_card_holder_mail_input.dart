import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hst_project/product/constants/color_constants.dart';
import 'package:hst_project/product/constants/string_constants.dart';
import 'package:hst_project/view_models/controllers/payment/pay_card/pay_card_view_model.dart';

class PayCardHolderMailInput extends GetView<PayCardController>{
  @override
  Widget build(BuildContext context) {
    return   Column(
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