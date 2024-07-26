import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hst_project/res/routes/routes_constants.dart';
import 'package:hst_project/view/action_menu/action_menu_view.dart';
import 'package:hst_project/view/get_money/get_money_view.dart';
import 'package:hst_project/view/payment/sales/sales_view.dart';
import 'package:hst_project/view/settings/settings_view.dart';
import 'package:hst_project/view_models/bindings/action_menu_binding.dart';
import 'package:hst_project/view_models/bindings/get_money_binding.dart';
import 'package:hst_project/view_models/bindings/sales_binding.dart';
import 'package:hst_project/view_models/bindings/settings_binding.dart';

class HomeController extends GetxController {
  static HomeController get to => Get.find();

  var currentIndex = 0.obs;

  final pages = [
    RoutesConstants.homeView,
    RoutesConstants.getMoneyView,
    RoutesConstants.settingsView
  ];

  void changePage(int index) {
    currentIndex.value = index;
    Get.offAndToNamed(pages[index], id: 1); // Ensure the correct navigator ID is used here
  }
  Route? onGenerateRoute(RouteSettings settings) {
    if (settings.name == RoutesConstants.salesView) {
      return GetPageRoute(
        settings: settings,
        page: () => SalesView(),
        binding: SalesBinding(),
      );
    }

    if (settings.name == RoutesConstants.actionMenuView) {
      return GetPageRoute(
        settings: settings,
        page: () => ActionMenuView(),
        binding: ActionMenuBinding(),
      );
    }

    if (settings.name == RoutesConstants.getMoneyView) {
      return GetPageRoute(
        settings: settings,
        page: () => GetMoneyView(),
        binding: GetMoneyBinding(),
      );
    }

    if (settings.name == RoutesConstants.settingsView) {
      return GetPageRoute(
        settings: settings,
        page: () => SettingsView(),
        binding: SettingsBinding(),
      );
    }

    return null;
  }
}
