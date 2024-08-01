
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hst_project/product/constants/color_constants.dart';
import 'package:hst_project/product/constants/string_constants.dart';
import 'package:hst_project/product/enums/custom_size_constants.dart';
import 'package:hst_project/product/enums/image_constants.dart';
import 'package:hst_project/product/widget/appbar/custom_app_bar.dart';
import 'package:hst_project/utils/extensions/double_extension.dart';
import 'package:hst_project/view/payment/widget/payment_amount_preview_label.dart';
import 'package:hst_project/view/payment/widget/payment_safety_pay_button.dart';
import 'package:hst_project/view_models/controllers/payment/pay_qr/pay_qr_view_model.dart';

class PayQRView extends GetView<PayQRController> {
  final controller = Get.put(PayQRController());
  @override
  Widget build(BuildContext context) {
    controller.receivedValue = Get.arguments['value'] as double;
        return Scaffold(
      appBar: CustomAppBar.getSalesCustomAppBar(StringConstants.payWithContactless),
      body: SafeArea(
        child: Padding(
          padding: CustomSizeConstants.low.padding,
          child: Column(
            children: [
              PaymentAmountPreviewLabel(value: controller.receivedValue.toString() ?? "Null" ),
              Container(
                padding: CustomSizeConstants.verylow.padding,
                child: Text(
                  "Lütfen QR kodu okutun ve Güvenli Ödeme'ye tıklayın.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15.0.sp,
                    fontWeight: FontWeight.w500,
                    color: ColorConstants.darkness,
                  ),
                ),
              ),
              Container(
                margin: CustomSizeConstants.low.margin,
                child: Image.asset(IconConstants.qr_code.toPng),
              ),
              Obx(() => controller.isLoading.value
                  ? Center(child: CircularProgressIndicator())
                  : PaymentSafetyPayButton(onPressed: () {
                      controller.startPaymentProcess();
                    })
              ),
            ],
          ),
        ),
      ),
    );
  }
}
