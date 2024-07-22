import 'package:flutter/material.dart';
import 'package:hst_project/product/constants/color_constants.dart';
import 'package:hst_project/product/enums/custom_size_constants.dart';

class CustomBoxDecorationItems {
  CustomBoxDecorationItems._();
  static LinearGradient getLinearGradient() {
    return const LinearGradient(
      colors: [
        ColorConstants.gradientStartColor,
        ColorConstants.gradientEndColor
      ],
    );
  }

  static InputDecoration getInputDecoration() {
    return InputDecoration(
      border: OutlineInputBorder(),
      filled: true,
      fillColor: ColorConstants.zambak.withOpacity(0.5),
    );
  }

  static TextStyle getTitleLogoStyle(
      {FontWeight fontWeight = FontWeight.w100}) {
    return TextStyle(
      color: ColorConstants.zambak,
      fontWeight: fontWeight,
      fontSize: CustomSizeConstants.titleLogoSize.value,
    );
  }
}
