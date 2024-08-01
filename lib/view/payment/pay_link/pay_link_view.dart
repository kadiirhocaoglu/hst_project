import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:hst_project/product/constants/string_constants.dart';
import 'package:hst_project/product/enums/custom_size_constants.dart';
import 'package:hst_project/product/widget/appbar/custom_app_bar.dart';
import 'package:hst_project/view_models/controllers/payment/pay_link/pay_link_view_model.dart';

class PayLinkView extends GetView<PayLinkController> {
  final controller = Get.put(PayLinkController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.getSalesCustomAppBar(StringConstants.payWithLink),
      body: Padding(
        padding: CustomSizeConstants.middleLow.padding,
        child: SingleChildScrollView(
          child: Form(
            key: controller.formKey,
            onChanged: controller.onFormChange,
            child: Column(
              children: [

                
              ],
            ),
          ),
        ),
      ),
    );
  }
}