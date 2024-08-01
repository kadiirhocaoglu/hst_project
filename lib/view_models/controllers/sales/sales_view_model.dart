import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hst_project/res/routes/routes_constants.dart';

class SalesController extends GetxController {

 final title = RoutesConstants.salesView.obs;
  var input = '0,00'.obs;  
  var value = 0.0.obs;     

  void onKeyTap(String value) {
    if (input.value == '0,00') {
      input.value = ''; 
    }

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


    String formattedInput = input.value.replaceAll(',', '.');


    try {
      this.value.value = double.parse(formattedInput);
      print(this.value.value);
    } catch (e) {
      this.value.value = 0.0;
    }
  }

  void deleteLastCharacter() {
    if (input.value.isNotEmpty) {
      if (input.value.length == 1 && input.value != ',') {
        input.value = '0,00'; // Geriye tek bir karakter kaldığında '0,00' olarak ayarla
      } else {
        input.value = input.value.substring(0, input.value.length - 1);
      }
      
      // Virgülü noktaya çevir ve değeri güncelle
      String formattedInput = input.value.replaceAll(',', '.');
      try {
        this.value.value = double.parse(formattedInput);
        print(this.value.value);
      } catch (e) {
        this.value.value = 0.0;
      }
    }
  }

  void salesContinueButtonOnPressed(){
    if (double != null){
      Get.toNamed(RoutesConstants.paymentView, arguments: {'value': value.value});

    }
  }
  }