import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PayCardController extends GetxController {
  double? receivedValue;

  GlobalKey formKey = GlobalKey();

  void onFormChange(){
    
  }
   
  Rx<String?> selectedCardType = Rx<String?>(null);
RxString selectedInstallment = "Tek Çekim".obs;
  

  void paymentSafetyPayButtonOnPressed() {}
  void installmentOnChanged(String? newValue) {
    if (newValue != null) {
      selectedInstallment.value = newValue;
    }
  }

  void cardTypeOnChange(String? newValue) {
    selectedCardType.value = newValue;

  }
  final List<String> cardTypes = ['Visa', 'MasterCard', 'American Express', 'Troy'];
}