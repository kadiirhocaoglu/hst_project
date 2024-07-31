import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hst_project/product/constants/color_constants.dart';
import 'package:hst_project/product/enums/custom_size_constants.dart';
import 'package:hst_project/product/widget/appbar/custom_app_bar.dart';
import 'package:hst_project/product/widget/appbar/custom_home_title_view.dart';
import 'package:hst_project/view/home/widgets/home_action_pay_button.dart';
import 'package:hst_project/view/home/widgets/home_hello_title_widget.dart';
import 'package:hst_project/view/home/widgets/home_upper_credit_card_widget.dart';
import 'package:hst_project/view/home/widgets/home_bottom_credit_card_widget.dart';
import 'package:hst_project/product/widget/decorations/custom_box_decoration_items.dart';
import 'package:hst_project/view/home/widgets/transaction_list.dart';
import 'package:hst_project/product/widget/texts/custom_title_logo.dart';
import 'package:hst_project/view_models/controllers/home/home_view_model.dart';



class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
      final HomeController controller = Get.put(HomeController());
    return Container(
      decoration: BoxDecoration(gradient: CustomBoxDecorationItems.getLinearGradient()),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: 
        SafeArea(
          bottom: false,
          child: Column(
            children: [
              CustomHomeTitleView(),
              CreditCardUpper(),
              Container(
                child: Expanded( 
                  child: Container(
                    color: ColorConstants.bgColor,
                  child: Column(
                    children: [
                      CreditCardBottom(),
                      HomeActionPayButton(), 
                      TransactionList() 
                    ],
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}