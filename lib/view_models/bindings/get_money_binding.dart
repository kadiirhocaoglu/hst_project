import 'package:get/get.dart';
import 'package:hst_project/view_models/controllers/get_money/get_money_view_model.dart';

class GetMoneyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GetMoneyController());
  }
}