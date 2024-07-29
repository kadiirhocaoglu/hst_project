import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hst_project/product/constants/string_constants.dart';
import 'package:hst_project/product/enums/custom_size_constants.dart';
import 'package:hst_project/view_models/controllers/register/register_view_model.dart';

class RegisterInputNameSurnameWidget extends GetView<RegisterController> {
  RegisterInputNameSurnameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(StringConstants.name),
              TextFormField(
                controller: controller.nameController.value,
                //validator: (String? value) => controller.checkNullandEmpty(value),
                keyboardType: TextInputType.name,
                decoration: InputDecoration(border: OutlineInputBorder()),
              )
            ],
          ),
        ),
        SizedBox(width: CustomSizeConstants.middleLow.value,),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(StringConstants.surname),
              TextFormField(
                controller: controller.surnameController.value,
                //validator: (String? value) => controller.checkNullandEmpty(value),
                keyboardType: TextInputType.name,
                decoration: InputDecoration(border: OutlineInputBorder()),
              )
            ],
          ),
        ),
      ],
    );
  }
}
