import 'package:intl/intl.dart';

class MyFormatter {
  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat("dd-MMM-yyyy").format(date); // Customize the date format as needed
  }

  static String formatCurrency(double amount) {
    return NumberFormat.currency(
      locale: "en_Us",
      symbol: "\$",
    ).format(amount); // Customize the currency locale and symbol as needed
  }

}