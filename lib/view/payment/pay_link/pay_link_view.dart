import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:hst_project/product/constants/string_constants.dart';
import 'package:hst_project/product/enums/custom_size_constants.dart';
import 'package:hst_project/product/widget/appbar/custom_app_bar.dart';
import 'package:hst_project/view/payment/pay_link/widget/pay_link_amoun_preview_widget.dart';
import 'package:hst_project/view/payment/pay_link/widget/pay_link_details.dart';
import 'package:hst_project/view/payment/pay_link/widget/details/pay_link_product_desciption.dart';
import 'package:hst_project/view/payment/pay_link/widget/details/pay_link_product_name_input.dart';
import 'package:hst_project/view/payment/pay_link/widget/pay_link_installment_drop_down_menu.dart';
import 'package:hst_project/view/payment/pay_link/widget/pay_link_safety_payment_button.dart';
import 'package:hst_project/view/payment/widget/payment_installment_drop_down_menu_widget.dart';
import 'package:hst_project/view_models/controllers/payment/pay_link/pay_link_view_model.dart';

class PayLinkView extends GetView<PayLinkController> {
  final controller = Get.put(PayLinkController());

  @override
  Widget build(BuildContext context) {
    controller.receivedValue = Get.arguments['value'] as double;
    return Scaffold(
      appBar: CustomAppBar.getSalesCustomAppBar(StringConstants.payWithLink),
      body: Padding(
        padding: CustomSizeConstants.middleLow.padding,
        child: SingleChildScrollView(
          child: Form(
            key: controller.formKey,
            onChanged: controller.onFormChange,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                PayLinkAmounPreviewWidget(),
                PayLinkDetails(),
                PayLinkInstallmentDropDownMenu(),
                PayLinkSafetyPaymentButton()
              ],
            ),
          ),
        ),
      ),
    );
  }
}