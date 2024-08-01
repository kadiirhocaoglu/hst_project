import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:hst_project/product/constants/color_constants.dart';
import 'package:hst_project/product/constants/string_constants.dart';
import 'package:hst_project/view_models/controllers/payment/pay_card/pay_card_view_model.dart';

class PayCardHolderPhoneInput extends GetView<PayCardController>{
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(StringConstants.cardHolderNumber),
        TextFormField(
          //controller: controller.phoneNumberController.value,
          //focusNode: controller.phoneNumberFocusNode.value,
          keyboardType: TextInputType.number,
          //validator: (String? value) => controller.checkPhoneNumber(value),
          // onFieldSubmitted: (value) {
          //   Utils.fieldFocusChange(
          //       context,
          //       controller.phoneNumberFocusNode.value,
          //       controller.passwordFocusNode.value);
          // },
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
            LengthLimitingTextInputFormatter(10),
          ],
          decoration: InputDecoration(
            prefix: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2.0),
              child: Text(
                StringConstants.placePhoneCode,
                style: TextStyle(fontSize: 16),
              ),
            ),
            border: OutlineInputBorder(),
            filled: true, fillColor: ColorConstants.bgColor
          ),
        ),
      ],
    );
  }

}