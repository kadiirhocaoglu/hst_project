import 'package:flutter/material.dart';
import 'package:hst_project/product/constants/string_constants.dart';
import 'package:hst_project/product/enums/custom_size_constants.dart';
import 'package:hst_project/product/widget/decorations/custom_box_decoration_items.dart';


class CustomTitleLogo extends StatelessWidget {
  const CustomTitleLogo({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(StringConstants.startLogo,
              style: CustomBoxDecorationItems.getTitleLogoStyle(fontWeight: FontWeight.bold),),
          Padding(
              padding: EdgeInsets.only(left: CustomSizeConstants.verylow.value),
              child: Text(StringConstants.endLogo,
                  style:CustomBoxDecorationItems.getTitleLogoStyle()))
        ],
      );
  }
}