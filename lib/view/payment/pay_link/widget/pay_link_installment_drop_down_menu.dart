import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hst_project/product/constants/color_constants.dart';
import 'package:hst_project/product/enums/custom_size_constants.dart';
import 'package:hst_project/view_models/controllers/payment/pay_link/pay_link_view_model.dart';

class PayLinkInstallmentDropDownMenu extends GetView<PayLinkController> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: CustomSizeConstants.verylow.marginVertical,
      color: ColorConstants.white100,
      child: Container(
        width: double.infinity,
        padding: CustomSizeConstants.low.paddingHorizontal,
        child: Obx(() {
          String? currentValue = controller.selectedInstallment.value;
          if (!items.contains(currentValue)) {
            currentValue = items.isNotEmpty ? items.first : null;
          }

          return DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              isDense: false,
              isExpanded: true,
              value: currentValue,
              hint: Text('Taksit Seçin'),
              onChanged: controller.installmentOnChanged,
              items: items.map((String installmentType) {
                return DropdownMenuItem<String>(
                  value: installmentType,
                  child: Text(installmentType),
                );
              }).toList(),
            ),
          );
        }),
      ),
    );
  }

  static const List<String> items = [
    "Tek Çekim",
    "2 Taksit",
    "3 Taksit",
    "4 Taksit",
    "5 Taksit",
    "6 Taksit"
  ];
}
