import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hst_project/product/constants/color_constants.dart';
import 'package:hst_project/product/constants/string_constants.dart';
import 'package:hst_project/product/enums/custom_size_constants.dart';
import 'package:hst_project/product/widget/decorations/custom_box_decoration_items.dart';
import 'package:hst_project/utils/extensions/double_extension.dart';
import 'package:hst_project/view_models/controllers/sales/sales_view_model.dart';

class SalesContinueButtonWidget extends GetView<SalesController> {
  SalesContinueButtonWidget({super.key});
//TODO: Düzenle burayı allah için
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: CustomSizeConstants.low.paddingHorizontal,
      child: TextButton(
        onPressed: controller.salesContinueButtonOnPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              StringConstants.salesContunie,
              style: CustomBoxDecorationItems.getNormalButtonTextStyle(),
            ),
            Container(
              margin: CustomSizeConstants.low.marginHorizontal,
              child: Icon(CupertinoIcons.right_chevron),
              decoration: BoxDecoration(
                  color: ColorConstants.gradientEndColor.withOpacity(0.8),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(
                      CustomSizeConstants.verylow.radiusCircular)),
            ),
            
          ],
        ),
        style: TextButton.styleFrom(
          fixedSize: Size(
            CustomSizeConstants.salesContinueButtonWidth.value.wp,
            CustomSizeConstants.normalButtonHeight.value,
          ),
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.all(CustomSizeConstants.medium.radiusCircular),
            side: BorderSide()
          ),
          backgroundColor: ColorConstants.gradientEndColor,
          foregroundColor: ColorConstants.darkness,
        ),
      ),
    );
  }
}
