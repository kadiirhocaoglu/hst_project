import 'package:flutter/material.dart';
import 'package:hst_project/product/constants/color_constants.dart';
import 'package:hst_project/product/enums/custom_size_constants.dart';
import 'package:hst_project/utils/extensions/double_extension.dart';

class CustomTextStyle {
  CustomTextStyle._();

  static TextStyle getLightHomeTextSyle(){
    return TextStyle(
      color: ColorConstants.darkness,
      fontSize: CustomSizeConstants.homeCardBalancesTitlesFontSize.value.sp,
      fontWeight: FontWeight.w300
    );
  }
  static TextStyle getBoldHomeTextSyle(){
    return TextStyle(
      color: ColorConstants.darkness,
      fontSize: CustomSizeConstants.homeCardBalancesFontSize.value.sp,
      fontWeight: FontWeight.w800
    );
  }
  static TextStyle getBoldSmallHomeTextSyle(){
    return TextStyle(
      color: ColorConstants.darkness,
      fontSize: CustomSizeConstants.homeCardSmallBalancesFontSize.value.sp,
      fontWeight: FontWeight.w800
    );
  }
}