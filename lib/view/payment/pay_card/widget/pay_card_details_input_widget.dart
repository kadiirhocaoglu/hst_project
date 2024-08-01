import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:hst_project/product/constants/color_constants.dart';
import 'package:hst_project/product/constants/string_constants.dart';
import 'package:hst_project/product/enums/custom_size_constants.dart';
import 'package:hst_project/utils/helper/date_formatter.dart';
import 'package:hst_project/view/payment/pay_card/widget/pay_card_card_number_input_widget.dart';
import 'package:hst_project/view/payment/pay_card/widget/pay_card_expration_cvv_input_widget.dart';
import 'package:hst_project/view/payment/pay_card/widget/pay_card_holder_name_input_widget.dart';
import 'package:hst_project/view_models/controllers/payment/pay_card/pay_card_view_model.dart';

class PayCardDetailsInputWidget extends GetView<PayCardController> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: CustomSizeConstants.verylow.marginVertical,
      color: ColorConstants.white100,
      child: Padding(
        padding: CustomSizeConstants.low.padding,
        child: Form(
          child: Column(
            children: [
             PayCardCardNumberInputWidget(),
              PayCardExprationCvvInputWidget(),
              PayCardHolderNameInputWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
