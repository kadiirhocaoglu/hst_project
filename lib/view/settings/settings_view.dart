import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hst_project/view_models/controllers/settings/settings_view_model.dart';

class SettingsView extends GetView<SettingsController> {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Settings")),
      body: Container(),
    );
  }
}