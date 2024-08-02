import 'package:flutter/material.dart';
import 'package:hst_project/product/constants/color_constants.dart';
import 'package:hst_project/product/enums/custom_size_constants.dart';
import 'package:hst_project/product/widget/texts/custom_menu_title_logo.dart';

class CustomActionMenuAppBar extends StatelessWidget {
  const CustomActionMenuAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: CustomSizeConstants.low.paddingHorizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        CustomMenuTitleLogo(title: "İşlemler"),
      ],),
    );
  }
}