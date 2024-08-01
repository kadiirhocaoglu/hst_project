import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hst_project/product/constants/color_constants.dart';
import 'package:hst_project/product/enums/custom_size_constants.dart';
import 'package:hst_project/view/payment/pay_card/widget/pay_card_holder_mail_input.dart';
import 'package:hst_project/view/payment/pay_card/widget/pay_card_holder_phone_input.dart';
import 'package:hst_project/view_models/controllers/payment/pay_card/pay_card_view_model.dart';

class PayCardHolderDetailsInputWidget extends GetView<PayCardController> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: ColorConstants.white100,
      child:Padding(padding: CustomSizeConstants.low.padding,
      child: Column(children: [
        PayCardHolderMailInput(),
        PayCardHolderPhoneInput()
      ],),) ,
    );
  }

}