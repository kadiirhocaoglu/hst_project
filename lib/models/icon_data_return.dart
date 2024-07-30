import 'package:flutter/material.dart';
import 'package:hst_project/models/transaction_type.dart';

class IconDataReturn {
IconDataReturn._();

static IconData getIconForTransactionType(TransactionType type) {
  switch (type) {
    case TransactionType.contactless:
      return Icons.contactless;
    case TransactionType.card:
      return Icons.credit_card;
    case TransactionType.link:
      return Icons.link;
    case TransactionType.qr:
      return Icons.qr_code;
    default:
      return Icons.help; 
  }
}
}