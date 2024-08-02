import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hst_project/product/constants/color_constants.dart';
import 'package:hst_project/product/enums/custom_size_constants.dart';
import 'package:hst_project/product/widget/appbar/custom_app_bar.dart';
import 'package:hst_project/product/widget/decorations/custom_box_decoration_items.dart';
import 'package:hst_project/utils/extensions/double_extension.dart';
import 'package:hst_project/view_models/controllers/action_menu/action_menu_view_model.dart';

class ActionMenuView extends GetView<ActionMenuController> {
  final controller = Get.put(ActionMenuController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.getMenuTitle("İşlemler"),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              height: 56.0,
              width: double.infinity,
              child: TextField(
                onChanged: controller.filterTransactions,
                style: TextStyle(color: ColorConstants.darkness),
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: "Arayın",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),
            ),
            SizedBox(height: 16),
            Expanded(
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
                  separatorBuilder: (context, index) {
                    return Divider(
                      color: Colors.grey[300], 
                      thickness: 0.9,
                      indent: 16.0.sp, 
                      endIndent: 16.0.sp, 
                    );
                  },
                  itemCount: controller.filteredTransactions.length,
                  itemBuilder: (context, index) {
                    final transaction = controller.filteredTransactions[index];
                    return ListTile(
                      leading: Icon(
                        transaction['icon']
                            as IconData, 
                      ),
                      title: Text(transaction['title'] as String),
                      trailing: Icon(Icons.chevron_right),
                      onTap: () {
                        
                      },
                    );
                  },
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
