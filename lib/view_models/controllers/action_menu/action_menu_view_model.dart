import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ActionMenuController extends GetxController {
  
  var transactions = [
    {"title": 'Satış Yap', "icon": Icons.sell,},
    {"title": 'Gün Sonu İşlemleri', "icon": Icons.document_scanner},
    {"title": 'Üye İşyeri İşlemleri', "icon": Icons.business},
    {"title": 'Onay Bekleyen İşlemler', "icon": Icons.pending, },
    {"title": 'Kampanyalar', "icon": Icons.campaign},
    {"title": 'Başvurular', "icon": Icons.app_registration},
    {"title": 'İşlem Geçmişi', "icon": Icons.history},
    {"title": 'HST Kart', "icon": Icons.credit_card},
    {"title": 'Finansal Özet', "icon": Icons.pie_chart, },
    {"title": 'Şüpheli İşlem Bildir', "icon": Icons.report},
   
  ].obs;

  var filteredTransactions = <Map<String, dynamic>>[].obs;

  @override
  void onInit() {
    super.onInit();
    filteredTransactions.addAll(transactions);
  }

  void filterTransactions(String query) {
    if (query.isEmpty) {
      filteredTransactions.assignAll(transactions);
    } else {
      filteredTransactions.assignAll(
        transactions.where((transaction) =>
            (transaction['title']! as String).toLowerCase().contains(query.toLowerCase()),),
      );
    }
  }
}
