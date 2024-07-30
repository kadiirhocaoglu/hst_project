import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hst_project/product/constants/color_constants.dart';
import 'package:hst_project/product/constants/string_constants.dart';
import 'package:hst_project/product/enums/custom_size_constants.dart';
import 'package:hst_project/product/enums/image_constants.dart';
import 'package:hst_project/product/widget/decorations/custom_box_decoration_items.dart';
import 'package:hst_project/utils/extensions/double_extension.dart';
import 'package:hst_project/view/home/widgets/home_card_logo_image_widget.dart';
import 'package:hst_project/view/home/widgets/home_daily_gero_widget.dart';
import 'package:hst_project/view_models/controllers/home/home_view_model.dart';

class CreditCardUpper extends  GetView<HomeController> {
  

  @override
  Widget build(BuildContext context) {
    return Container(
        height: CustomSizeConstants.homeCardUpperHeight.value.hp, //20 percent of height
        width: CustomSizeConstants.homeCardWidth.value.wp,
        decoration:CustomBoxDecorationItems.getCardUpperDecoration(),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomeDailyGeroWidget(),
            HomeCardLogoImageWidget(),
          ],
        )
    );
  }
}
