

import 'package:get/get.dart';
import 'package:hst_project/view_models/controllers/auth_main/auth_main_view_model.dart';

class AuthMainBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(()=> AuthMainController());
  }


}