import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hst_project/product/constants/color_constants.dart';
import 'package:hst_project/product/enums/custom_size_constants.dart';
import 'package:hst_project/product/widget/decorations/custom_box_decoration_items.dart';
import 'package:hst_project/product/widget/texts/custom_title_logo.dart';

class CustomAppBar {
  CustomAppBar._();
  static AppBar getCustomAppBar() {
    return AppBar(
      systemOverlayStyle: SystemUiOverlayStyle.light,
      toolbarHeight: 100,
      leading: BackButton(
        color: ColorConstants.zambak
      ),
      automaticallyImplyLeading: false,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: CustomSizeConstants.medium.radiusCircular,
              bottomRight: CustomSizeConstants.medium.radiusCircular)),
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: CustomBoxDecorationItems.getLinearGradient(),
          borderRadius: BorderRadius.only(
              bottomLeft: CustomSizeConstants.medium.radiusCircular,
              bottomRight: CustomSizeConstants.medium.radiusCircular),
        ),
      ),
      title: CustomTitleLogo(),
      actions: [IconButton(onPressed: () {}, icon: Icon(Icons.notifications, color: ColorConstants.zambak,))],
    );
  }
}
