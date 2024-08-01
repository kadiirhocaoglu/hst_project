import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:hst_project/product/constants/color_constants.dart';
import 'package:hst_project/product/enums/custom_size_constants.dart';
import 'package:hst_project/view/payment/pay_link/widget/pay_link_amoun_preview_widget.dart';
import 'package:hst_project/view/payment/pay_link/widget/details/pay_link_mail_input.dart';
import 'package:hst_project/view/payment/pay_link/widget/details/pay_link_number_input.dart';
import 'package:hst_project/view/payment/pay_link/widget/details/pay_link_product_desciption.dart';
import 'package:hst_project/view/payment/pay_link/widget/details/pay_link_product_name_input.dart';
import 'package:hst_project/view_models/controllers/payment/pay_link/pay_link_view_model.dart';

class PayLinkDetails extends GetView<PayLinkController>{
  @override
  Widget build(BuildContext context) {
    return Card(
      color: ColorConstants.white100,
      child: Container(
        padding: CustomSizeConstants.low.padding,
        child: Column(
          children: [
            PayLinkMailInput(),
            PayLinkNumberInput(),
            PayLinkProductNameInput(),
            PayLinkProductDesciption()
          ],
        ),
      ),
    );
  }

}