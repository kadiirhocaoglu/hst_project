import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:hst_project/product/constants/string_constants.dart';
import 'package:hst_project/view_models/controllers/payment/pay_card/pay_card_view_model.dart';

class PayCardCardNumberInputWidget extends GetView<PayCardController>{
  @override
  Widget build(BuildContext context) {
   return  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(StringConstants.cardNumber),
                  TextFormField(
                    //controller: controller.phoneNumberController.value,
                    //validator: (String? value) => controller.checkPhoneNumber(value),
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      LengthLimitingTextInputFormatter(10),
                    ],
                    decoration: InputDecoration(
                        filled: true,
                        border: OutlineInputBorder(),
                        fillColor: Colors.white),
                  ),
                ],
              );
  }

  
} 