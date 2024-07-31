import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hst_project/product/constants/color_constants.dart';
import 'package:hst_project/product/constants/string_constants.dart';
import 'package:hst_project/product/enums/custom_size_constants.dart';
import 'package:hst_project/product/widget/decorations/custom_box_decoration_items.dart';
import 'package:hst_project/utils/extensions/double_extension.dart';
import 'package:hst_project/view_models/controllers/home/home_view_model.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeActionPayButton extends GetView<HomeController> {
  HomeActionPayButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: CustomSizeConstants.low.paddingHorizontal,
      child: TextButton(
        onPressed: controller.actionPayButtonOnTapped,
        child: Row(
          children: [
            Container(
              margin: CustomSizeConstants.low.marginHorizontal,
              child: Icon(Icons.add),
              decoration: BoxDecoration(
                  color: ColorConstants.gradientEndColor.withOpacity(0.8),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(
                      CustomSizeConstants.verylow.radiusCircular)),
            ),
            Text(
              StringConstants.payment,
              style: CustomBoxDecorationItems.getNormalButtonTextStyle(),
            ),
          ],
        ),
        style: TextButton.styleFrom(
          fixedSize: Size(
            CustomSizeConstants.homeCardWidth.value.wp,
            CustomSizeConstants.normalButtonHeight.value,
          ),
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.all(CustomSizeConstants.low.radiusCircular),
            side: BorderSide()
          ),
          backgroundColor: ColorConstants.white100,
          foregroundColor: ColorConstants.darkness,
        ),
      ),
    );
  }
}
