import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hst_project/product/constants/color_constants.dart';
import 'package:hst_project/product/constants/string_constants.dart';
import 'package:hst_project/view_models/controllers/payment/pay_card/pay_card_view_model.dart';

class PayCardHolderNameInputWidget extends GetView<PayCardController>{
  @override
  Widget build(BuildContext context) {
    return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(StringConstants.cardHolderName),
              TextFormField(
                //controller: controller.nameController.value,
                //validator: (String? value) => controller.checkNullandEmpty(value),
                keyboardType: TextInputType.name,
                decoration: InputDecoration(border: OutlineInputBorder(), filled: true, fillColor: ColorConstants.bgColor),
              )
            ],
          );
  }

}