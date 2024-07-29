import 'package:get/get.dart';
import 'package:hst_project/res/routes/routes_constants.dart';

class AuthMainController extends GetxController {


  void loginOnPressed(){
    Get.toNamed(RoutesConstants.loginView);
  }  
  void registerOnPressed(){
    Get.toNamed(RoutesConstants.registerView);
  }  
}