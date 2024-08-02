import 'package:flutter/material.dart';
import 'package:hst_project/product/constants/color_constants.dart';
import 'package:hst_project/product/enums/custom_size_constants.dart';
import 'package:hst_project/product/enums/image_constants.dart';
import 'package:hst_project/utils/extensions/double_extension.dart';

class CustomBoxDecorationItems {
  CustomBoxDecorationItems._();
  static LinearGradient getLinearGradient() {
    return const LinearGradient(
      colors: [
        //  ColorConstants.gradientStartColor,
         ColorConstants.gradientStartColor,
        //   ColorConstants.cardGradientColor,
        //  ColorConstants.logoDarkGreen,
         ColorConstants.logoDarkGreen,

        // ColorConstants.logoLightGreen,
        // // ColorConstants.logoDarkBlue,
        // // ColorConstants.logoDarkBlue
        // ColorConstants.logoLightBlue,
      //Color.fromRGBO(16, 35, 31, 1),
      //  Color.fromRGBO(16, 35, 31, 1),
     // Color.fromARGB(255,0, 122, 255),
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
  static BoxDecoration getCardUpperDecoration(){ 
    return BoxDecoration(
      image: DecorationImage(
        image: AssetImage(ImageConstants.card_bg.toPng), alignment: Alignment.topCenter, 
        fit: BoxFit.fitWidth, 
       colorFilter: ColorFilter.mode(
          Colors.white.withOpacity(0.4),
          BlendMode.dstIn, 
        ),
      ),
      borderRadius: getCardUpperRadius(),
      gradient: CustomBoxDecorationItems.getCardGradient(),
      border: Border(
        right: BorderSide(), 
        left: BorderSide(), 
        top: BorderSide()
        )  
    );
  }
    static BoxDecoration getCardBottomDecoration(){ 
    return BoxDecoration(
      borderRadius: getCardBottomRadius(),
      gradient: CustomBoxDecorationItems.getCardGradient(),
      border: Border(
        right: BorderSide(), 
        left: BorderSide(), 
        bottom: BorderSide()
        )  
    );
  }

static BorderRadius getCardUpperRadius(){ 
    return BorderRadius.only(
        topLeft: CustomSizeConstants.medium.radiusCircular, 
        topRight: CustomSizeConstants.medium.radiusCircular);

  }
  static BorderRadius getCardBottomRadius(){ 
    return BorderRadius.only(
        bottomLeft: CustomSizeConstants.medium.radiusCircular, 
        bottomRight: CustomSizeConstants.medium.radiusCircular);
  
  
  }

  static InputDecoration getInputDecoration() {
    return InputDecoration(
      border: OutlineInputBorder(),
      filled: true,
      fillColor: ColorConstants.zambak.withOpacity(0.5),
    );
  }

  static TextStyle getTitleLogoStyle(
      {FontWeight fontWeight = FontWeight.w100, Color color = ColorConstants.zambak}) {
    return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: CustomSizeConstants.titleLogoSize.value,
    );
  }
  
    static TextStyle getNormalButtonTextStyle(
      {FontWeight fontWeight = FontWeight.w100}) {
    return TextStyle(
              fontSize: CustomSizeConstants.medium.value,
              fontWeight: FontWeight.w600);
  }
  static TextStyle getMenuTitleTextStyle(){
    return TextStyle(
              fontSize: CustomSizeConstants.medium.value.sp,
              fontWeight: FontWeight.w700,
              color: ColorConstants.zambak
              
            );
  }
  
}
