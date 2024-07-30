class DateFormatter {
  DateFormatter._();

   static String formatDate(DateTime date) {
      String day = date.day.toString().padLeft(2, '0');
      String month = date.month.toString().padLeft(2, '0');
      String year = date.year.toString();
      String hour = date.hour.toString().padLeft(2, '0');
      String minute = date.minute.toString().padLeft(2, '0');
      return '$year-$month-$day $hour:$minute';
    }

}