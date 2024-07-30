import 'package:flutter/material.dart';
import 'package:hst_project/models/icon_data_return.dart';
import 'package:hst_project/models/transaction_model.dart';
import 'package:hst_project/models/transaction_type.dart';
import 'package:hst_project/utils/helper/date_formatter.dart';

class TransactionListTileWidget extends StatelessWidget {
  final PayTransaction transaction;

  TransactionListTileWidget({required this.transaction});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(IconDataReturn.getIconForTransactionType(transaction.transactionType)), // Sol tarafta ikon
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(transaction.sender, style: TextStyle(fontWeight: FontWeight.bold)), // Gönderen
          Text(transaction.receiver), 
          Text(DateFormatter.formatDate(transaction.date), style: TextStyle(color: Colors.grey)), // Tarih
        ],
      ),
      trailing: Text('${transaction.amount.toStringAsFixed(2)} TL', style: TextStyle(fontWeight: FontWeight.bold)), // Sağ tarafta tutar
    );
  }


}
