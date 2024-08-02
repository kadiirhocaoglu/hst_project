
import 'package:flutter/material.dart';
import 'package:hst_project/product/constants/string_constants.dart';
import 'package:hst_project/product/widget/decorations/custom_box_decoration_items.dart';

class CustomMenuTitleLogo extends StatelessWidget {
  String title;
  CustomMenuTitleLogo({required this.title});
  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title,
              style: CustomBoxDecorationItems.getMenuTitleTextStyle(),)
        ],
      );
  }
}