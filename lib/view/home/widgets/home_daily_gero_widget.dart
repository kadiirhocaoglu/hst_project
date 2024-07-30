import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hst_project/product/constants/string_constants.dart';
import 'package:hst_project/product/enums/custom_size_constants.dart';
import 'package:hst_project/product/widget/texts/custom_text_style.dart';
import 'package:hst_project/view_models/controllers/home/home_view_model.dart';

class HomeDailyGeroWidget extends GetView<HomeController>{
  const HomeDailyGeroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: CustomSizeConstants.low.padding,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              StringConstants.dailyGero,
              style: CustomTextStyle.getLightHomeTextSyle(),
            ),
            Row(
              children: [
                Text(
                  StringConstants.fakeBalance,
                  style: CustomTextStyle.getBoldHomeTextSyle(),
                ),
                Text(
                StringConstants.fakeBalancedot,
                style: CustomTextStyle.getBoldSmallHomeTextSyle(),
                ),
                Text(
                StringConstants.typeMoney,
                style: CustomTextStyle.getBoldSmallHomeTextSyle(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
