import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hst_project/product/constants/string_constants.dart';
import 'package:hst_project/view/register/widgets/register_aggree_bottom_sheet.dart';
import 'package:hst_project/view_models/controllers/register/register_view_model.dart';


class RegisterAggreTermsButton extends GetView<RegisterController> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Obx(() => IconButton(
          onPressed: () async {
            bool? value = await RegisterBottomSheet.show(context);
            if (value != null) {
              controller.isAgreed.value = value;
            }
          },
          icon: Icon(
            controller.isAgreed.value ? Icons.check_box : Icons.square_outlined,
          ),
        )),
        Expanded(
          child: Text(
            StringConstants.signupTermsText,
            style: Theme.of(context).textTheme.labelMedium,
          ),
        ),
      ],
    );
  }
}