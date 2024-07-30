import 'package:flutter/material.dart';
import 'package:hst_project/product/constants/color_constants.dart';
import 'package:hst_project/product/enums/custom_size_constants.dart';
import '../texts/custom_title_logo.dart';

class CustomHomeTitleView extends StatelessWidget {
  const CustomHomeTitleView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: CustomSizeConstants.low.paddingHorizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        IconButton(onPressed: (){}, icon: Icon(Icons.assistant, color: ColorConstants.zambak,)),
        CustomTitleLogo(),
        IconButton(onPressed: (){}, icon: Icon(Icons.notifications, color: ColorConstants.zambak),)
      ],),
    );
  }
}