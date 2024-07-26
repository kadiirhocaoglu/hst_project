
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hst_project/product/constants/color_constants.dart';
import 'package:hst_project/view/get_money/get_money_view.dart';
import 'package:hst_project/view/home/home_view.dart';
import 'package:hst_project/view/payment/sales/sales_view.dart';
import 'package:hst_project/view/settings/settings_view.dart';
import 'package:hst_project/view_models/controllers/dashboard/dashboard_view_model.dart';
import 'package:hst_project/view_models/controllers/home/home_view_model.dart';
import 'package:hst_project/view_models/controllers/settings/settings_view_model.dart';

class DashboardView extends StatelessWidget {

 final DashboardController controller = Get.put(DashboardController());
 final HomeController hc = Get.put(HomeController());
 final SettingsController sc = Get.put(SettingsController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        backgroundColor: Colors.red,
        body: IndexedStack(
          index: controller.index.value,
          children: [
            HomeView(),
            SalesView(),
            GetMoneyView(),
            SettingsView(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.black45,
          selectedItemColor: ColorConstants.darkness,
          items: controller.bottomItems(),
          onTap: controller.onChange,
          currentIndex: controller.index.value,
          type: BottomNavigationBarType.fixed,
          
        ),
      );
    });
  }

}
