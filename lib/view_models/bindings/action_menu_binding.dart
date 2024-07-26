import 'package:get/get.dart';
import 'package:hst_project/view_models/controllers/action_menu/action_menu_view_model.dart';

class ActionMenuBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ActionMenuController());
  }
}