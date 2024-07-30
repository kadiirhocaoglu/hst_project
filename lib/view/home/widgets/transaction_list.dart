import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hst_project/product/constants/string_constants.dart';
import 'package:hst_project/product/enums/custom_size_constants.dart';
import 'package:hst_project/view/home/widgets/transaction_list_tile_widget.dart';
import 'package:hst_project/view_models/controllers/home/home_view_model.dart';

class TransactionList extends GetView<HomeController> {
  const TransactionList({super.key});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: CustomSizeConstants.medium.padding,
        child: Column(
          children: [
            Row(mainAxisAlignment:MainAxisAlignment.spaceBetween, children: [Text("Son İşlemler"), TextButton(onPressed: (){}, child: Text("Tüm İşlemler"))],),
            Expanded(
              child: ListView.builder(
                itemCount: controller.transactionList.length,
                itemBuilder: (context, index) {
                  final transaction = controller.transactionList[index];
                  return TransactionListTileWidget(transaction: transaction);
                },)
            ),
          ],
        ),
      ),
    );
  }
}
