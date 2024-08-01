import 'package:flutter/services.dart';

class DateFormatter {
  DateFormatter._(); // Kapalı yapıcı, sınıfın örneklerinin oluşturulmasını engeller.

  static String formatDate(DateTime date) {
    String day = date.day.toString().padLeft(2, '0');
    String month = date.month.toString().padLeft(2, '0');
    String year = date.year.toString();
    String hour = date.hour.toString().padLeft(2, '0');
    String minute = date.minute.toString().padLeft(2, '0');
    return '$year-$month-$day $hour:$minute';
  }
}

class CardExpirationDateFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    String text = newValue.text;
    
    // Metni iki haneli ay ve iki haneli yıl olarak formatla
    if (text.length > 2) {
      text = text.substring(0, 2) + '/' + text.substring(2);
    }
    
    return newValue.copyWith(
      text: text,
      selection: TextSelection.collapsed(offset: text.length),
    );
  }
}
