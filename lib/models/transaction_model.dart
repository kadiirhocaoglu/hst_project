
import 'package:hst_project/models/transaction_type.dart';

class PayTransaction {
  final String transactionId;
  final double amount;
  final DateTime date;
  final String status;
  final String sender;
  final String receiver;
  final TransactionType transactionType;

  PayTransaction({
    required this.transactionId,
    required this.amount,
    required this.date,
    required this.status,
    required this.sender,
    required this.receiver,
    required this.transactionType,
  });

  // // JSON'dan PayTransaction oluşturma
  // factory PayTransaction.fromJson(Map<String, dynamic> json) {
  //   return PayTransaction(
  //     transactionId: json['transactionId'],
  //     amount: json['amount'],
  //     currency: json['currency'],
  //     date: DateTime.parse(json['date']),
  //     status: json['status'],
  //     sender: json['sender'],
  //     receiver: json['receiver'],
  //   );
  // }

   // PayTransaction'ı JSON'a dönüştürme
  // Map<String, dynamic> toJson() {
  //   return {
  //     'transactionId': transactionId,
  //     'amount': amount,
  //     'currency': currency,
  //     'date': date.toIso8601String(),
  //     'status': status,
  //     'sender': sender,
  //     'receiver': receiver,
  //   };
  // }
}