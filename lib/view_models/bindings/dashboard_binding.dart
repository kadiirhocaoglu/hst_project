import 'package:get/get.dart';
import 'package:hst_project/view_models/controllers/auth_main/auth_main_view_model.dart';
import 'package:hst_project/view_models/controllers/dashboard/dashboard_view_model.dart';
import 'package:hst_project/view_models/controllers/home/home_view_model.dart';
import 'package:hst_project/view_models/controllers/settings/settings_view_model.dart';

class DashboardBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(() => DashboardController());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<SettingsController>(() => SettingsController());

  }

}