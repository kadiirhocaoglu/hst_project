import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hst_project/product/constants/color_constants.dart';
import 'package:hst_project/product/enums/custom_size_constants.dart';
import 'package:hst_project/view_models/controllers/payment/pay_card/pay_card_view_model.dart';

class PayCardDropDownMenuWidget extends GetView<PayCardController> {
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
            value: controller.selectedCardType.value,
            hint: Text('Kart Tipini Seçin'),
            onChanged: (String? newValue) {
              controller.cardTypeOnChange(newValue);
            },
            items: controller.cardTypes.map((String cardType) {
              return DropdownMenuItem<String>(
                value: cardType,
                child: Text(cardType),
              );
            }).toList(),
          ),
        )),
      ),
    );
  }
}
