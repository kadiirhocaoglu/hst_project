import 'package:get/get.dart';
import 'package:hst_project/view_models/controllers/login/login_view_model.dart';

class LoginBinding implements Bindings {
    @override
  void dependencies() {
    Get.lazyPut(() => LoginController());
  }
}