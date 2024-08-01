import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hst_project/view/payment/widget/payment_amount_preview_label.dart';
import 'package:hst_project/view_models/controllers/payment/pay_link/pay_link_view_model.dart';

class PayLinkAmounPreviewWidget extends GetView<PayLinkController>{
  @override
  Widget build(BuildContext context) {
    return               PaymentAmountPreviewLabel(value: controller.receivedValue.toString() ?? "Null" );
  }
  
}

