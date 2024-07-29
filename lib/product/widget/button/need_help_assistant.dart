import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:hst_project/product/constants/string_constants.dart';
import 'package:hst_project/res/routes/routes_constants.dart';
class NeedHelpAssistant extends StatelessWidget {
  const NeedHelpAssistant({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(StringConstants.needHelp),
        TextButton(onPressed: (){
        Get.toNamed(RoutesConstants.assistantView);
        }, child: Text(StringConstants.hstAsistant, style: TextStyle(fontWeight: FontWeight.bold),))
      ],
    );
  }
}