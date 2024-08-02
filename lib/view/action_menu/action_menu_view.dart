import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hst_project/product/constants/color_constants.dart';
import 'package:hst_project/product/enums/custom_size_constants.dart';
import 'package:hst_project/view/action_menu/custom_action_menu_app_bar.dart';
import 'package:hst_project/product/widget/appbar/custom_app_bar.dart';
import 'package:hst_project/product/widget/appbar/custom_home_title_view.dart';
import 'package:hst_project/product/widget/decorations/custom_box_decoration_items.dart';
import 'package:hst_project/utils/extensions/double_extension.dart';
import 'package:hst_project/view_models/controllers/action_menu/action_menu_view_model.dart';

class ActionMenuView extends GetView<ActionMenuController> {
  final controller = Get.put(ActionMenuController());
//TODO: Düzenlenecekkk
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
         decoration: BoxDecoration(gradient: CustomBoxDecorationItems.getLinearGradient()),
        child: SafeArea(
          child: Column(
            children: [
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(gradient: CustomBoxDecorationItems.getLinearGradient()),
                    child: CustomActionMenuAppBar()),
               
              Container(
                height: 7.0.hp,
                width: 95.0.wp,
                margin: CustomSizeConstants.middleLow.margin,
                child: TextField(
                  onChanged: controller.filterTransactions,
                  style: TextStyle(color: ColorConstants.darkness),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                    prefixIcon: Icon(Icons.search, color: ColorConstants.darkness),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide.none,
                    ),
                    hintStyle: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                    hintText: "İşlem Ara",
                  ),
                ),
              ),
               ],
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(color: Colors.white),
                  child: Obx(() {
                    if (controller.filteredTransactions.isEmpty) {
                      return Center(
                        child: Text(
                          "Bu işlem bulunamadı",
                          style: TextStyle(color: Colors.black),
                        ),
                      );
                    }
                            
                    return ListView.separated(
                      itemCount: controller.filteredTransactions.length + 1, // Add one more for the bottom separator
                      separatorBuilder: (context, index) {
                        return Container(
                          padding: EdgeInsets.symmetric(horizontal: 5), // Padding around the separator
                          child: Divider(
                            color: Colors.grey[800], // Color of the separator line
                            height: 1, // Height of the separator line
                          ),
                        );
                      },
                      itemBuilder: (context, index) {
                        if (index == controller.filteredTransactions.length) {
                          return SizedBox.shrink(); // Empty widget for the extra item
                        }
                        final transaction = controller.filteredTransactions[index];
                        return GestureDetector(
                          onTap: () {
                            // Navigate to the corresponding page
                            // Get.toNamed('/${transaction.toLowerCase().replaceAll(' ', '_')}');
                          },
                          child: Padding(
                            padding: CustomSizeConstants.medium.padding,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  transaction,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14.0.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
