import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hst_project/product/enums/custom_size_constants.dart';
import 'package:hst_project/product/widget/decorations/custom_box_decoration_items.dart';
import 'package:hst_project/utils/extensions/double_extension.dart';
import 'package:hst_project/view/sales/widget/sales_numeric_keyboard.dart';
import 'package:hst_project/view_models/controllers/sales/sales_view_model.dart';

class SalesAccountCardWidget extends GetView<SalesController> {

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: 90.0.wp,
        height: 10.0.hp,
        padding: CustomSizeConstants.low.padding,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("HST Mobil", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15.0.sp)),
            Text("Terminal ID: 135412",overflow: TextOverflow.clip, style: TextStyle(fontWeight: FontWeight.w300, fontSize: 10.0.sp),),
          ],
          
        ),
      ),
    );
  }
}