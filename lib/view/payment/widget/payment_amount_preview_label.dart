import 'package:flutter/material.dart';
import 'package:hst_project/product/constants/color_constants.dart';
import 'package:hst_project/product/enums/custom_size_constants.dart';
import 'package:hst_project/product/widget/decorations/custom_box_decoration_items.dart';
import 'package:hst_project/utils/extensions/double_extension.dart';

class PaymentAmountPreviewLabel extends StatelessWidget {
  final String value;

  PaymentAmountPreviewLabel({required this.value});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: ColorConstants.white100,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: ColorConstants.darkness, width: 1.0.sp), 
        borderRadius: BorderRadius.all(CustomSizeConstants.low.radiusCircular), 
      ),
      child: Container(
        padding: CustomSizeConstants.middleLow.padding,
        width: double.infinity, 
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Tutar', style: TextStyle(color: ColorConstants.darkness, fontWeight: FontWeight.w300, fontSize: 14.0.sp)),
            Text('$value TL', style: TextStyle(color: ColorConstants.darkness, fontWeight: FontWeight.w500, fontSize: 16.0.sp),),
          ],
        ),
      ),
    );
  }
}
