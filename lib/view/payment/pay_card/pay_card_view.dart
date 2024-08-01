import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hst_project/product/constants/string_constants.dart';
import 'package:hst_project/product/enums/custom_size_constants.dart';
import 'package:hst_project/product/widget/appbar/custom_app_bar.dart';
import 'package:hst_project/view/payment/pay_card/widget/pay_card_details_input_widget.dart';
import 'package:hst_project/view/payment/pay_card/widget/pay_card_drop_down_menu_widget.dart';
import 'package:hst_project/view/payment/pay_card/widget/pay_card_holder_details_input_widget.dart';
import 'package:hst_project/view/payment/pay_card/widget/pay_card_installment_drop_down_menu.dart';
import 'package:hst_project/view/payment/pay_card/widget/pay_card_safety_pay_button.dart';
import 'package:hst_project/view/payment/widget/payment_amount_preview_label.dart';
import 'package:hst_project/view_models/controllers/payment/pay_card/pay_card_view_model.dart';

class PayCardView extends GetView<PayCardController> {
  final controller = Get.put(PayCardController());

  @override
  Widget build(BuildContext context) {
    controller.receivedValue = Get.arguments['value'] as double;
    return Scaffold(
      appBar: CustomAppBar.getSalesCustomAppBar(StringConstants.payWithCard),
      body: Padding(
        padding: CustomSizeConstants.middleLow.padding,
        child: SingleChildScrollView(
          child: Form(
            key: controller.formKey,
            onChanged: controller.onFormChange,
            child: Column(
              children: [
              PaymentAmountPreviewLabel(value: controller.receivedValue.toString() ?? "Null" ),                PayCardDropDownMenuWidget(),
                PayCardDetailsInputWidget(),
                PayCardHolderDetailsInputWidget(),
                PayCardInstallmentDropDownMenu(),
                PayCardSafetyPayButton()
                
              ],
            ),
          ),
        ),
      ),
    );

  }
}