import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hst_project/product/constants/color_constants.dart';
import 'package:hst_project/product/constants/string_constants.dart';
import 'package:hst_project/product/enums/custom_size_constants.dart';
import 'package:hst_project/view_models/controllers/register/register_view_model.dart';

class RegisterBottomSheet extends GetView<RegisterController> {
  const RegisterBottomSheet({super.key});

  static Future<bool?> show(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return const RegisterBottomSheet();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: CustomSizeConstants.medium.padding,
        child: ListView(
          children: [
            Text(
              StringConstantsExt.termsConditionsTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              StringConstantsExt.termsConditionsText,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            ElevatedButton(
              onPressed: () {
                Get.back(result: true);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: ColorConstants.primary,
              ),
              child: Text(StringConstants.agreeButtonText),
            ),
          ],
        ),
      ),
    );
  }
}
