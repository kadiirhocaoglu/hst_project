import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hst_project/product/constants/string_constants.dart';
import 'package:hst_project/product/enums/custom_size_constants.dart';
import 'package:hst_project/product/widget/decorations/custom_box_decoration_items.dart';
import 'package:hst_project/product/widget/texts/custom_text_style.dart';
import 'package:hst_project/utils/extensions/double_extension.dart';
import 'package:hst_project/view/home/widgets/home_total_balance_widget.dart';
import 'package:hst_project/view_models/controllers/home/home_view_model.dart';

class CreditCardBottom extends GetView<HomeController> {
  const CreditCardBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: CustomSizeConstants.medium.value),
        //height: CustomSizeConstants.homeCardBottomHeight.value.hp, //5 percent of height
        width: CustomSizeConstants.homeCardWidth.value.wp,
        decoration: CustomBoxDecorationItems.getCardBottomDecoration(),
        child: HomeTotalBalanceWidget(),
        );
  }
}
