import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hst_project/product/constants/color_constants.dart';
import 'package:hst_project/product/enums/custom_size_constants.dart';
import 'package:hst_project/utils/extensions/double_extension.dart';
import 'package:hst_project/view_models/controllers/sales/sales_view_model.dart';

class SalesDeleteButtonWidget extends GetView<SalesController> {

  
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.all(CustomSizeConstants.medium.radiusCircular),
      onTap: () {
        controller.deleteLastCharacter();
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(CustomSizeConstants.medium.radiusCircular), 
          color: ColorConstants.white100,
          border: Border.all(color: ColorConstants.darkness)),
        alignment: Alignment.center,
        width: 24.0.wp,
        height: 24.0.wp,
        child: Icon(CupertinoIcons.delete_left, color: ColorConstants.darkness, size: 35.0.sp, )
      ),
    );
  }
}