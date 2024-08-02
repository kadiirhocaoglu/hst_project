import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hst_project/models/transaction_model.dart';
import 'package:hst_project/models/transaction_type.dart';
import 'package:hst_project/view/home/widgets/transaction_list.dart';
import 'package:hst_project/res/routes/routes_constants.dart';
import 'package:hst_project/view/action_menu/action_menu_view.dart';
import 'package:hst_project/view/get_money/get_money_view.dart';
import 'package:hst_project/view/sales/sales_view.dart';
import 'package:hst_project/view/settings/settings_view.dart';
import 'package:hst_project/view_models/bindings/action_menu_binding.dart';
import 'package:hst_project/view_models/bindings/get_money_binding.dart';
import 'package:hst_project/view_models/bindings/sales_binding.dart';
import 'package:hst_project/view_models/bindings/settings_binding.dart';

class HomeController extends GetxController {

void actionPayButtonOnTapped(){
  Get.toNamed(RoutesConstants.salesView);
}
void assistantOnPressed(){
  Get.toNamed(RoutesConstants.assistantView);
}
void notificationsOnPressed(){
  Get.toNamed(RoutesConstants.notificaitonsView);
}
final List<PayTransaction> transactionList = [
  PayTransaction(
    transactionId: 'txn_001',
    amount: 150.50,
    date: DateTime.now().subtract(Duration(days: 1)),
    status: 'completed',
    sender: 'Ahmet Yılmaz',
    receiver: 'HST Mobil',
    transactionType: TransactionType.card, 
  ),
  PayTransaction(
    transactionId: 'txn_002',
    amount: 200.00,
    date: DateTime.now().subtract(Duration(days: 2)),
    status: 'pending',
    sender: 'Ayşe Kaya',
    receiver: 'HST Mobil',
    transactionType: TransactionType.contactless, 
  ),
  PayTransaction(
    transactionId: 'txn_003',
    amount: 75.25,
    date: DateTime.now().subtract(Duration(days: 3)),
    status: 'completed',
    sender: 'Mehmet Demir',
    receiver: 'HST Mobil',
    transactionType: TransactionType.link,
  ),
  PayTransaction(
    transactionId: 'txn_004',
    amount: 120.75,
    date: DateTime.now().subtract(Duration(days: 4)),
    status: 'cancelled',
    sender: 'Fatma Çelik',
    receiver: 'HST Mobil',
    transactionType: TransactionType.qr,
  ),
  PayTransaction(
    transactionId: 'txn_005',
    amount: 50.00,
    date: DateTime.now().subtract(Duration(days: 5)),
    status: 'completed',
    sender: 'Ali Şahin',
    receiver: 'HST Mobil',
    transactionType: TransactionType.card,
  ),
  PayTransaction(
    transactionId: 'txn_006',
    amount: 300.00,
    date: DateTime.now().subtract(Duration(days: 6)),
    status: 'pending',
    sender: 'Zeynep Çakır',
    receiver: 'HST Mobil',
    transactionType: TransactionType.contactless,
  ),
  PayTransaction(
    transactionId: 'txn_007',
    amount: 500.00,
    date: DateTime.now().subtract(Duration(days: 7)),
    status: 'completed',
    sender: 'Murat Kılıç',
    receiver: 'HST Mobil',
    transactionType: TransactionType.link,
  ),
  PayTransaction(
    transactionId: 'txn_008',
    amount: 80.25,
    date: DateTime.now().subtract(Duration(days: 8)),
    status: 'completed',
    sender: 'Elif Yıldız',
    receiver: 'HST Mobil',
    transactionType: TransactionType.qr,
  ),
  PayTransaction(
    transactionId: 'txn_009',
    amount: 60.00,
    date: DateTime.now().subtract(Duration(days: 9)),
    status: 'cancelled',
    sender: 'Kemal Özkan',
    receiver: 'HST Mobil',
    transactionType: TransactionType.card,
  ),
  PayTransaction(
    transactionId: 'txn_010',
    amount: 90.00,
    date: DateTime.now().subtract(Duration(days: 10)),
    status: 'completed',
    sender: 'Hülya Karaca',
    receiver: 'HST Mobil',
    transactionType: TransactionType.contactless,
  ),
];

}
