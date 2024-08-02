import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/route_manager.dart';
import 'package:hst_project/product/constants/string_constants.dart';
import 'package:hst_project/product/enums/image_constants.dart';
import 'package:hst_project/res/routes/app_routes.dart';
import 'package:hst_project/res/routes/routes_constants.dart';
import 'package:hst_project/utils/extensions/double_extension.dart';
import '../../constants/color_constants.dart';
import '../../enums/custom_size_constants.dart';
import '../decorations/custom_box_decoration_items.dart';
import '../texts/custom_title_logo.dart';

class CustomAppBar {
  CustomAppBar._();
  static AppBar getCustomAppBar() {
    return AppBar(
      foregroundColor: ColorConstants.zambak,
      toolbarHeight: 13.0.hp,
      leading: BackButton(color: ColorConstants.bgColor,),
      systemOverlayStyle: SystemUiOverlayStyle.light,
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
      actions: [
        IconButton(
          onPressed: () {
            Get.toNamed(RoutesConstants.assistantView);
          },
           icon: Icon(Icons.support_agent_sharp)
          ),
      ]
    );
  }
    static AppBar getSalesCustomAppBar(String title) {
    return AppBar(
      foregroundColor: ColorConstants.zambak,
      toolbarHeight: 10.0.hp,
      leading: BackButton(color: ColorConstants.bgColor,),
      systemOverlayStyle: SystemUiOverlayStyle.light,
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
      title: Text(title, style: TextStyle(color: ColorConstants.zambak, fontSize: 22.0.sp, fontWeight: FontWeight.w400),),
      
    );
    }
    static AppBar getMenuTitle(String title) { 
      return AppBar(
        toolbarHeight: 9.0.hp,
        title: Text(title, style: CustomBoxDecorationItems.getMenuTitleTextStyle()),
        flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: CustomBoxDecorationItems.getLinearGradient(),
          borderRadius: BorderRadius.only(
              bottomLeft: CustomSizeConstants.medium.radiusCircular,
              bottomRight: CustomSizeConstants.medium.radiusCircular),
        ),
      ));
  }
  }

