import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PayLinkController extends GetxController {
  RxString selectedInstallment = "Tek Çekim".obs; 
    dynamic? receivedValue;

  GlobalKey formKey = GlobalKey();

  void paymentSafetyPayButtonOnPressed() {}
  void onFormChange() {}
  void installmentOnChanged(String? newValue) {
    if (newValue != null) {
      selectedInstallment.value = newValue;
    }
  }
}
