import 'package:get/get.dart';

class ActionMenuController extends GetxController {


var transactions = [
    'Satış Yap',
    'Onay Bekleyen İşlemler',
    'Kampanyalar',
    'Başvurular',
    'HST Kart',
    'Üye İşyeri İşlemleri',
    'Ödeme İste',
    'Finansal Özet',
    'Şüpheli İşlem Bildir',
  ].obs;

  var filteredTransactions = <String>[].obs;

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
            transaction.toLowerCase().contains(query.toLowerCase())),
      );
    }
  }
  }