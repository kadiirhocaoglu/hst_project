import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hst_project/product/constants/color_constants.dart';
import 'package:hst_project/view/get_money/get_money_view.dart';
import 'package:hst_project/view/home/home_view.dart';
import 'package:hst_project/view/sales/sales_view.dart';
import 'package:hst_project/view/settings/settings_view.dart';
import 'package:hst_project/view_models/controllers/dashboard/dashboard_view_model.dart';

class DashboardView extends StatelessWidget {

  final DashboardController controller = Get.put(DashboardController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Obx(
        () => IndexedStack(
          index: controller.index.value,
          children: controller.screens,
        ),
      ),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: ColorConstants.darkness,
            unselectedItemColor: Colors.black54,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            onTap: (index) {
              controller.changeIndex(index);
            },
            currentIndex: controller.index.value,
            items: controller.bottomItems,
      ),
    )
    );
  }
}
