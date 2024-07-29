import 'package:get/get.dart';
import 'package:hst_project/view_models/controllers/register/register_view_model.dart';

class RegisterBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterController()); 
  }

}