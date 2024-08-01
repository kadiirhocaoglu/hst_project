import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:hst_project/product/constants/color_constants.dart';
import 'package:hst_project/product/constants/string_constants.dart';
import 'package:hst_project/product/enums/custom_size_constants.dart';
import 'package:hst_project/product/widget/appbar/custom_app_bar.dart';
import 'package:hst_project/product/widget/decorations/custom_box_decoration_items.dart';
import 'package:hst_project/product/widget/decorations/icon_logo_image.dart';
import 'package:hst_project/utils/extensions/double_extension.dart';
import 'package:hst_project/view/payment/widget/payments_button_widget.dart';
import 'package:hst_project/view_models/controllers/payment/payment_view_model.dart';

class PaymentView extends GetView<PaymentController>{
  final controller = Get.put(PaymentController());
  @override
  Widget build(BuildContext context) {
     controller.receivedValue = Get.arguments;
    return Scaffold(
      appBar:CustomAppBar.getSalesCustomAppBar(StringConstants.choseePay),
      body: SafeArea(
        child: Container(
          padding: CustomSizeConstants.low.padding,
          child: Column(
            children: [
              PaymentsButtonWidget(icon: CupertinoIcons.creditcard, onPressed: controller.payWithCardOnPressed, title: StringConstants.payWithCard, subtitle: StringConstants.payWithCardSubtitle),
              PaymentsButtonWidget(icon: CupertinoIcons.link, onPressed: controller.payWithLinkOnPressed, title: StringConstants.payWithLink, subtitle: StringConstants.payWithLinkSubtitle),
              PaymentsButtonWidget(icon: CupertinoIcons.qrcode, onPressed: controller.payWithQROnPressed, title: StringConstants.payWithQR, subtitle: StringConstants.payWithQRSubtitle),
              PaymentsButtonWidget(icon: CupertinoIcons.radiowaves_right, onPressed: controller.payWithContactlessOnPressed, title: StringConstants.payWithContactless, subtitle: StringConstants.payWithContactlessSubtitle),
              IconLogoImage(width: 15.0.wp)
            ],
          ),
        ),
      ),
    );
  }

}