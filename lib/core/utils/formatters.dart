import 'package:intl/intl.dart';

class Formatters {
  static final currency = NumberFormat.currency(symbol: 'KES ', decimalDigits: 2);
  static final compactCurrency = NumberFormat.compactCurrency(symbol: 'KES ');
  static final date = DateFormat('d MMM yyyy');
  static final dateTime = DateFormat('d MMM yyyy, HH:mm');
  static final monthYear = DateFormat('MMM yyyy');

  static String money(num value) => currency.format(value);

  static String compactMoney(num value) => compactCurrency.format(value);

  static String formatDate(DateTime value) => date.format(value);

  static String formatDateTime(DateTime value) => dateTime.format(value);
}
