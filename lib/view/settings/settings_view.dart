import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hst_project/product/widget/appbar/custom_app_bar.dart';
import 'package:hst_project/view_models/controllers/settings/settings_view_model.dart';

class SettingsView extends GetView<SettingsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  CustomAppBar.getMenuTitle("Ayarlar"),
      body: Column(
        children: [

        ],
      )
    );
  }
}
