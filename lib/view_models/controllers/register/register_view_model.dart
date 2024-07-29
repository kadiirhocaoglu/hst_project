

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {  
  final nameController = TextEditingController().obs;
  final surnameController = TextEditingController().obs;
  final emailController = TextEditingController().obs; 
  final webSiteController = TextEditingController().obs;     
  final phoneNumberController = TextEditingController().obs;
  final passwordController = TextEditingController().obs; 
    var isAgreed = false.obs;
  

  // final phoneNumberFocusNode = FocusNode().obs;
  // final passwordFocusNode = FocusNode().obs;

//  RxBool rememberMeIsSelected = false.obs;
  
  final GlobalKey<FormState> registerFormKey = GlobalKey<FormState>();
  final ValueNotifier<bool> formValidateNotifier  = ValueNotifier<bool>(false);
  
void onFormChange(){
    formValidateNotifier.value = registerFormKey.currentState?.validate() ?? false;
  }
  void registerButtonOnPressed(){
    if (registerFormKey.currentState!.validate() && isAgreed.value) {
      // başarılı register simülasyonu
      //TODO: print(Get.size.width);
      Get.snackbar('HST POS', 'Kayıt başarılı, hoşgeldin.');
      passwordController.value.clear();
    } else {
      Get.snackbar('HST POS', 'Lütfen bilgileri doğru girdiğinizden emin olun.');
    }
  }


  bool checkTermsAgreement() {
    if (!isAgreed.value) {
      Get.snackbar(
        "Terms Not Agreed",
        "Please agree to the terms to proceed.",
        snackPosition: SnackPosition.BOTTOM,
      );
      return false;
    }
    return true;
  }
  String? checkPhoneNumber(String? value){
    if (value == null || value!.isEmpty || value!.length < 10){
      return "Telefon numaranızı giriniz.(5xx xxx xx xx)";
    }
    return null; 
  }
    
  String? checkPassword(String? value){
    if (value == null || value!.isEmpty || value!.length < 6){
      return "Lütfen şifrenizi giriniz.";
    }
    return null; 
  }

  String? checkNullandEmpty(String? value) {
    if (value == null || value!.isEmpty ){
      return "Lütfen şifrenizi giriniz.";
    }
    return null; 
  }


}