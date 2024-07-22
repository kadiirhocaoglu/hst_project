import 'package:flutter/material.dart';
import 'package:hst_project/product/constants/color_constants.dart';

class CustomSwitch extends Switch {
  CustomSwitch({required super.value, required super.onChanged});

  Switch getCustomSwitch(
      {required bool isSelected, required void Function(bool)? onChanged}) {
    return Switch(
        value: isSelected,
        onChanged: onChanged,
        activeColor: ColorConstants.primary);
  }
}
