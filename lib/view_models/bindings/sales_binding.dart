import 'package:get/get.dart';
import 'package:hst_project/view_models/controllers/payment/payment_view_model.dart';
import 'package:hst_project/view_models/controllers/sales/sales_view_model.dart';

class SalesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SalesController());
    Get.lazyPut(() => PaymentController());
  }
}