import 'package:flutter/material.dart';
import 'package:hst_project/product/enums/custom_size_constants.dart';
import 'package:hst_project/product/enums/image_constants.dart';
import 'package:hst_project/utils/extensions/double_extension.dart'; 
class HomeCardLogoImageWidget extends StatelessWidget {
  const HomeCardLogoImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: CustomSizeConstants.low.padding,
          child: Image.asset(IconConstants.hst_logo.toPng),
          height: CustomSizeConstants.homeCardLogoHeight.value.hp
        ),
        Expanded(
          child: Row(
            children: [
              Container(
                height: CustomSizeConstants.high.value.sp,
                child: Image.asset(IconConstants.card_chip.toPng)),
              Container(
                height: CustomSizeConstants.high.value.sp,
                child: Image.asset(IconConstants.wifi.toPng)),
            ],
          ),
        ),
      ],
    );
  }
}