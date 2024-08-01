import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hst_project/product/constants/color_constants.dart';
import 'package:hst_project/product/enums/custom_size_constants.dart';
import 'package:hst_project/product/widget/decorations/custom_box_decoration_items.dart';
import 'package:hst_project/utils/extensions/double_extension.dart';
import 'package:hst_project/view_models/controllers/sales/sales_view_model.dart';

class SalesAmountInputWidget extends GetView<SalesController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0.wp,
      child: Obx(() => Text(
            '${controller.input.value} TL',
            textAlign: TextAlign.end,
            style: TextStyle(
               fontSize: controller.input.value.length > 6 ? 30.0.sp : 42.0.sp,
                fontWeight: FontWeight.bold,
                color: ColorConstants.darkness),
          )),
    );
  }
}

