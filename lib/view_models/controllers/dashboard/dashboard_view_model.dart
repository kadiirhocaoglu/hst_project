import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hst_project/view/action_menu/action_menu_view.dart';
import 'package:hst_project/view/auth_main/auth_main_view.dart';
import 'package:hst_project/view/home/home_view.dart';
import 'package:hst_project/view/login/login_view.dart';
import 'package:hst_project/view/register/register_view.dart';
import 'package:hst_project/view/settings/settings_view.dart';

class DashboardController extends GetxController {
  var index = 0.obs;


  void changeIndex(int index) {
    this.index.value = index;
  }

  List<GetView> get screens {
    return [
      HomeView(),
      ActionMenuView(),
      SettingsView()
    ];
  }
  List<BottomNavigationBarItem> get bottomItems {
    return [
      BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.home),
        label: "Anasayfa",
      ),
      BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.circle_grid_3x3),
        label: "İşlemler",
      ),
      BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.settings),
        label: "Ayarlar",
      ),
    ];
  }
}
