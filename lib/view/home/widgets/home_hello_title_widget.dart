import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hst_project/product/constants/color_constants.dart';
import 'package:hst_project/product/enums/custom_size_constants.dart';
import 'package:hst_project/view_models/controllers/home/home_view_model.dart';

class HomeHelloTitleWidget extends GetView<HomeController> {
  const HomeHelloTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: CustomSizeConstants.low.padding,
      child: Row(
        children: [
          Text("Merhaba, ", style: TextStyle(color: ColorConstants.bgColor, fontSize: 18.0, fontWeight: FontWeight.w600)),
          Text("HST Mobil", style: TextStyle(color: ColorConstants.bgColor, fontSize: 18.0, fontWeight: FontWeight.w300))
        ],
      ),
    );
  }
}