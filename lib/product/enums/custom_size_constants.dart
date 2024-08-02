
import 'package:flutter/material.dart';

enum CustomSizeConstants {
  ///5.0
  verylow(5),

  ///10.0
  low(10),
  
  //15.0
  middleLow(15),

  ///20.0
  medium(20),

  ///30.0
  high(30),

  ///45.0
  veryhigh(45),

  /// AppBar Title Logo Font Size
  titleLogoSize(30),

  ///Normal Button Height [value]
  normalButtonHeight(56.0),

  ///HomeCard Upper height [value]
  homeCardUpperHeight(15.0),
  ///HomeCard  bottom height [value]
  homeCardBottomHeight(7.0),
  ///HomeCard Upper width [value]
  homeCardWidth(89.0),
  
  homeCardLogoHeight(9.0),

  salesContinueButtonWidth(65.0),

  ///HomeCard BalanceFontSize [value]
  homeCardBalancesFontSize(20.0),

  ///HomeCardSmallBalanceFontSize [value]
  homeCardSmallBalancesFontSize(12.0),

  ///HomeCard BalancesTitlesFontSize [value]
  homeCardBalancesTitlesFontSize(12.0);

  final double value;
  const CustomSizeConstants(this.value);

  ///All sides padding with [value]
  EdgeInsets get padding => EdgeInsets.all(value);
  
  ///Vertical sides padding with [value]
  EdgeInsets get paddingVertical => EdgeInsets.symmetric(vertical: value);
  
  ///Horizontal sides padding with [value]
  EdgeInsets get paddingHorizontal => EdgeInsets.symmetric(horizontal: value);

  ///All sides margin with [value]
  EdgeInsets get margin => EdgeInsets.all(value);
  
  ///Vertical sides margin with [value]
  EdgeInsets get marginVertical => EdgeInsets.symmetric(vertical: value);
  
  ///Horizontal sides margin with [value]
  EdgeInsets get marginHorizontal => EdgeInsets.symmetric(horizontal: value);

  Radius get radiusCircular => Radius.circular(value);
  Radius get radiusZero => Radius.zero;
}