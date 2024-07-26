import 'package:get/get.dart';
import 'package:hst_project/view_models/controllers/settings/settings_view_model.dart';

class SettingsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SettingsController());
  }
}