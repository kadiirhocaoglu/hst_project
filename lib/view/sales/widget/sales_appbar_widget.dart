import 'package:flutter/material.dart';
import 'package:hst_project/product/constants/color_constants.dart';
import 'package:hst_project/product/constants/string_constants.dart';
import 'package:hst_project/product/widget/decorations/custom_box_decoration_items.dart';

class SalesAppbarWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return   Text(
        StringConstants.sales,
        style: CustomBoxDecorationItems.getTitleLogoStyle(fontWeight:FontWeight.w400, color:  ColorConstants.darkness),
    );
  }
}