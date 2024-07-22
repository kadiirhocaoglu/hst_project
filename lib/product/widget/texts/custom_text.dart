import 'package:flutter/material.dart';

class CustomText extends Text{
  CustomText._(super.data);

  static  Text getTextBold(String text){
    return Text(text);
  }


}