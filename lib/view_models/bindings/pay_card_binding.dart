import 'package:get/get.dart';
import 'package:hst_project/view_models/controllers/payment/pay_card/pay_card_view_model.dart';

class PayCardBinding implements Bindings{


  @override
  void dependencies() {
    Get.lazyPut(() => PayCardController());
  }}