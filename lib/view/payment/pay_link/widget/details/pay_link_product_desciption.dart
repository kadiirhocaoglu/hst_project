import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:hst_project/product/constants/color_constants.dart';
import 'package:hst_project/product/constants/string_constants.dart';
import 'package:hst_project/view_models/controllers/payment/pay_link/pay_link_view_model.dart';

class PayLinkProductDesciption extends GetView<PayLinkController>{
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