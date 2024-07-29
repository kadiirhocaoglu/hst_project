import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hst_project/product/constants/color_constants.dart';
import 'package:hst_project/product/enums/custom_size_constants.dart';
import 'package:hst_project/product/widget/appbar/custom_app_bar.dart';
import 'package:hst_project/product/widget/appbar/custom_home_title_view.dart';
import 'package:hst_project/product/widget/cards/action_buttons.dart';
import 'package:hst_project/product/widget/cards/credit_card.dart';
import 'package:hst_project/product/widget/cards/credit_card_bottom.dart';
import 'package:hst_project/product/widget/decorations/custom_box_decoration_items.dart';
import 'package:hst_project/product/widget/lists/transaction_list.dart';
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
              Container(
                //height: size.height / 5,
                child: CustomHomeTitleView(),
              ),
              Padding(
                padding: EdgeInsets.only(top: CustomSizeConstants.medium.value),
                child: CreditCard(),
              ),
              Expanded(
                child: Container(
                 color: Colors.white,
                child: Column(
                  children: [
                    CreditCardBottom(),
                    Expanded(
                      child: Column(
                        children: [
                          SizedBox(height: 30,), 
                          ActionButtons(),
                          SizedBox(height: 20,), 
                          TransactionList()
                          ],),
                    )
                  ],
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

