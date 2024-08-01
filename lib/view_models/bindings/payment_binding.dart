import 'package:get/get.dart';
import 'package:hst_project/view_models/controllers/payment/payment_view_model.dart';

class PaymentBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => PaymentController());
    
  }
  
}