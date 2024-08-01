import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hst_project/product/constants/color_constants.dart';
import 'package:hst_project/product/enums/custom_size_constants.dart';
import 'package:hst_project/utils/extensions/double_extension.dart';
import 'package:hst_project/view_models/controllers/sales/sales_view_model.dart';

class SalesCalcButtonWidget extends GetView<SalesController> {
  final String value;
  SalesCalcButtonWidget({required this.value});
  
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.all(CustomSizeConstants.medium.radiusCircular),
      onTap: () {
        controller.onKeyTap(value);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(CustomSizeConstants.medium.radiusCircular), 
          color: ColorConstants.white100,
          border: Border.all(color: ColorConstants.darkness)),
        alignment: Alignment.center,
        width: 24.0.wp,
        height: 24.0.wp,
        child: Text(
          value,
          style: TextStyle(fontSize: 35.0.sp, fontWeight: FontWeight.bold, color: ColorConstants.darkness),
        ),
      ),
    );
  }
}