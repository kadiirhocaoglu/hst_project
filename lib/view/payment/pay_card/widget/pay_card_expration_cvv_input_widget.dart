import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:hst_project/product/constants/color_constants.dart';
import 'package:hst_project/product/constants/string_constants.dart';
import 'package:hst_project/product/enums/custom_size_constants.dart';
import 'package:hst_project/utils/helper/date_formatter.dart';
import 'package:hst_project/view_models/bindings/pay_card_binding.dart';
import 'package:hst_project/view_models/controllers/payment/pay_card/pay_card_view_model.dart';

class PayCardExprationCvvInputWidget extends GetView<PayCardController>{
  @override
  Widget build(BuildContext context) {
    return Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(StringConstants.cardExpirationDate),
                        TextFormField(
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                            LengthLimitingTextInputFormatter(4),
                            CardExpirationDateFormatter(),
                          ],
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            filled: true,
                            fillColor: ColorConstants.bgColor,
                            hintText: 'MM/YY',
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: CustomSizeConstants.middleLow.value,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(StringConstants.cardCVV),
                        TextFormField(
                          //controller: controller.surnameController.value,
                          //validator: (String? value) => controller.checkNullandEmpty(value),
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                            LengthLimitingTextInputFormatter(3),
                          ],
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              filled: true,
                              fillColor: ColorConstants.bgColor),
                        )
                      ],
                    ),
                  ),
                ],
              );
  }


}