import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PayCardController extends GetxController {
  double? receivedValue;

  GlobalKey formKey = GlobalKey();

  void onFormChange(){
    
  }
   
  Rx<String?> selectedCardType = Rx<String?>(null);


  void cardTypeOnChange(String? newValue) {
    selectedCardType.value = newValue;

  }
  final List<String> cardTypes = ['Visa', 'MasterCard', 'American Express', 'Troy'];
}