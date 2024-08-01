import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hst_project/product/constants/color_constants.dart';
import 'package:hst_project/product/constants/string_constants.dart';
import 'package:hst_project/product/enums/custom_size_constants.dart';
import 'package:hst_project/product/widget/appbar/custom_app_bar.dart';
import 'package:hst_project/view/sales/widget/sales_account_card_widget.dart';
import 'package:hst_project/view/sales/widget/sales_amount_input_widget.dart';
import 'package:hst_project/view/sales/widget/sales_appbar_widget.dart';
import 'package:hst_project/view/sales/widget/sales_bottom_card_container_widget.dart';
import 'package:hst_project/view/sales/widget/sales_continue_button_widget.dart';
import 'package:hst_project/view/sales/widget/sales_numeric_keyboard.dart';
import 'package:hst_project/view_models/controllers/sales/sales_view_model.dart';

class SalesView extends GetView<SalesController> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.getSalesCustomAppBar(StringConstants.sales),
      body: SafeArea(
        child: Padding(
          padding: CustomSizeConstants.low.padding,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SalesAccountCardWidget(),
              SalesAmountInputWidget(),
              SalesBottomCardContainerWidget(),
              
            ],
            ),
        ),
      ),
    );
  }
}