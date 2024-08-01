import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:hst_project/view/payment/widget/payment_safety_pay_button.dart';
import 'package:hst_project/view_models/controllers/payment/pay_card/pay_card_view_model.dart';

class PayCardSafetyPayButton extends GetView<PayCardController>{
  @override
  Widget build(BuildContext context) {
  return PaymentSafetyPayButton(onPressed: controller.paymentSafetyPayButtonOnPressed,);
  }
  
}