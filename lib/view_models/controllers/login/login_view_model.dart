import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hst_project/res/routes/routes_constants.dart';


class LoginController extends GetxController {
  final title = RoutesConstants.loginView.obs;

  
  final phoneNumberController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  final phoneNumberFocusNode = FocusNode().obs;
  final passwordFocusNode = FocusNode().obs;

  RxBool rememberMeIsSelected = false.obs;
  
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  final ValueNotifier<bool> formValidateNotifier  = ValueNotifier<bool>(false);
  
  void loginButtonOnPressed() {
    if (loginFormKey.currentState!.validate()) {
      // başarılı login simülasyonu
      Get.snackbar('HST POS', 'Giriş başarılı, hoşgeldin.');
      passwordController.value.clear();
    } else {
      Get.snackbar('HST POS', 'Lütfen bilgileri doğru girdiğinizden emin olun.');
    }
  }

  void onFormChange(){
    formValidateNotifier.value = loginFormKey.currentState?.validate() ?? false;
  }

  bool isSelected = false;

  void toggleSwitch(bool value) {
  rememberMeIsSelected.value = value;

    print(value);
  }

  
  String? checkPassword(String? value){
    if (value == null || value!.isEmpty || value!.length < 6){
      return "Lütfen şifrenizi giriniz.";
    }
    return null; 
  }
  String? checkPhoneNumber(String? value){
    if (value == null || value!.isEmpty || value!.length < 10){
      return "Telefon numaranızı giriniz.(5xx xxx xx xx)";
    }
    return null; 
  }
  

  void forgettenPasswordOnPressed(){
    //TODO: şifremi unttum apisini entegre et
  }
}
