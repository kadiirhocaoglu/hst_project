import 'package:flutter/material.dart';
import 'package:hst_project/product/constants/color_constants.dart';
import 'package:hst_project/product/enums/custom_size_constants.dart';

class CustomBoxDecorationItems {
  CustomBoxDecorationItems._();
  static LinearGradient getLinearGradient() {
    return const LinearGradient(
      colors: [
        ColorConstants.gradientStartColor,
        ColorConstants.logoDarkGreen,
        //ColorConstants.logoLightGreen,
       // ColorConstants.logoDarkBlue,
      //  ColorConstants.logoLightBlue,
      ],
    );
  }

  static LinearGradient getCardGradient() {
    return const LinearGradient(
      colors: [
        ColorConstants.cardGradientColor,
        ColorConstants.cardGradientEndColor,
        ColorConstants.cardGradientColor,
      ],
    );
  }

  static BoxDecoration getActionButtonsDecoration() {
    return BoxDecoration(
        color: ColorConstants.white100,
        borderRadius:
            BorderRadius.all(CustomSizeConstants.medium.radiusCircular));
  }

  static BoxDecoration getBGGradient(){
    return BoxDecoration(
      gradient: CustomBoxDecorationItems.getLinearGradient()
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
