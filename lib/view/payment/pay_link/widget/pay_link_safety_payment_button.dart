import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:hst_project/view/payment/widget/payment_safety_pay_button.dart';
import 'package:hst_project/view_models/controllers/payment/pay_link/pay_link_view_model.dart';

class PayLinkSafetyPaymentButton extends GetView<PayLinkController>{
  @override
  Widget build(BuildContext context) {
    return PaymentSafetyPayButton(onPressed: controller.paymentSafetyPayButtonOnPressed);
  }

}