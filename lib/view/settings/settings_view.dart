import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hst_project/product/constants/color_constants.dart';
import 'package:hst_project/product/widget/decorations/custom_box_decoration_items.dart';
import 'package:hst_project/view/settings/widget/custom_settings_app_bar.dart';
import 'package:hst_project/view_models/controllers/settings/settings_view_model.dart';

class SettingsView extends GetView<SettingsController> {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: CustomBoxDecorationItems.getLinearGradient()),
        child: SafeArea(
          child: Column(
            children: [
              CustomSettingsAppBar(),
              Expanded(
                child:Container(
                  decoration: BoxDecoration(color: ColorConstants.bgColor),
                ) 
              )
            ],
          ),
        ),
      ),
    );
  }
}