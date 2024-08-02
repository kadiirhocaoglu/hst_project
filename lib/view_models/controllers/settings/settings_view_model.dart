import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsController extends GetxController {
  final settingsOptions = [
    {"icon": Icons.person, "title": "Profil"},
    {"icon": Icons.security, "title": "Güvenlik"},
    {"icon": Icons.notifications, "title": "Bildirimler"},
    {"icon": Icons.account_balance, "title": "Banka Hesapları"},
    {"icon": Icons.document_scanner, "title": "Belgeler"},
    {"icon": Icons.description, "title": "Sözleşmeler"},
    {"icon": Icons.group, "title": "Çalışanlar"},
    {"icon": Icons.monetization_on, "title": "Komisyonlar"},
    {"icon": Icons.language, "title": "Dil"},
    {"icon": Icons.help, "title": "Yardım"},
    {"icon": Icons.info, "title": "Hakkında"},
    {"icon": Icons.feedback, "title": "Öneri ve Şikayet"},
  ];

  var filteredTransactions = <Map<String, dynamic>>[].obs;

  @override
  void onInit() {
    super.onInit();
    filteredTransactions.addAll(settingsOptions);
  }

  void filterTransactions(String query) {
    if (query.isEmpty) {
      filteredTransactions.assignAll(settingsOptions);
    } else {
      filteredTransactions.assignAll(
        settingsOptions.where(
          (settingsOption) => (settingsOption['title']! as String)
              .toLowerCase()
              .contains(query.toLowerCase()),
        ),
      );
    }
  }
}
