import 'package:get/get.dart';
import 'package:hst_project/res/routes/routes_constants.dart';

class PaymentController extends GetxController {
  dynamic? receivedValue;

  payWithCardOnPressed() {
    if (Get.arguments != null) {
    Get.toNamed(RoutesConstants.payCardView, arguments: receivedValue);
  }
  }
  payWithLinkOnPressed() {
    Get.toNamed(RoutesConstants.payLinkView,  arguments: receivedValue);
 
  }
  payWithQROnPressed() {
    Get.toNamed(RoutesConstants.payQRView, arguments: receivedValue);
  }
  
  payWithContactlessOnPressed() {
    Get.toNamed(RoutesConstants.payContactlessView, arguments: receivedValue);
  }
}
