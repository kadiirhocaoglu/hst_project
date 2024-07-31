import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hst_project/res/routes/routes_constants.dart';

class SalesController extends GetxController {
  final title = RoutesConstants.salesView.obs;
  var input = ''.obs;
  var fractional = ''.obs;
  void onKeyTap(String value) {
    if (value == ',') {
      if (!input.value.contains(',')) {
        input.value += value;
      }
    } else if (input.value.contains(',')) {
      if (input.value.split(',')[1].length < 2) {
        input.value += value;
      }
    } else {
      if (input.value.length < 9) {
        input.value += value;
      }
    }
  }

  void deleteLastCharacter() {
    if (input.value.isNotEmpty) {
      input.value = input.value.substring(0, input.value.length - 1);
    }
  }
  void salesContinueButtonOnPressed(){
    Get.toNamed(RoutesConstants.paymentView);
  }
  }