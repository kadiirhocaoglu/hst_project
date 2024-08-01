import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hst_project/product/constants/color_constants.dart';
import 'package:hst_project/product/enums/custom_size_constants.dart';

class PaymentInstallmentDropDownMenuWidget extends StatelessWidget {
  final String value;
  final ValueChanged<String?> onChanged;

  PaymentInstallmentDropDownMenuWidget({
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: CustomSizeConstants.verylow.marginVertical,
      color: ColorConstants.white100,
      child: Container(
        width: double.infinity,
        padding: CustomSizeConstants.low.paddingHorizontal,
        child: Obx(() => DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              isDense: false,
              isExpanded: true,
              value: value,
              hint: Text('Taksit Seçin'),
              onChanged: onChanged,
              items: items.map((String installmentType) {
                return DropdownMenuItem<String>(
                  value: installmentType,
                  child: Text(installmentType),
                );
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }

  static const List<String> items = [
    "2 Taksit",
    "3 Taksit",
    "4 Taksit",
    "5 Taksit",
    "6 Taksit"
  ];
}
