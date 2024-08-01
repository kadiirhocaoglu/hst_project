import 'package:flutter/material.dart';
import 'package:hst_project/product/constants/color_constants.dart';
import 'package:hst_project/product/enums/custom_size_constants.dart';
import 'package:hst_project/utils/extensions/double_extension.dart';
import 'package:hst_project/view/sales/widget/sales_continue_button_widget.dart';
import 'package:hst_project/view/sales/widget/sales_numeric_keyboard.dart';

class SalesBottomCardContainerWidget extends StatelessWidget {
  const SalesBottomCardContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SalesNumericKeyboard(),
          SalesContinueButtonWidget()
        ],
      ),
    );
  }
}