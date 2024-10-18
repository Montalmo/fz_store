import 'package:intl/intl.dart';

class FZFormatters {
  static String formatDate(DateTime date) {
    date = DateTime.now();
    return DateFormat('dd-MMM-yyyy').format(date);
  }

  static String formatCurrency(double amount) {
    return NumberFormat.currency(locale: 'en_US', symbol: '\$').format(amount);
  }

  static String formatPhoneNumber(String phoneNumber) {
    if (phoneNumber.length == 10) {
      return '(${phoneNumber.substring(0, 3)}) ${phoneNumber.substring(3, 6)} ${phoneNumber.substring(6)}';
    } else if (phoneNumber.length == 11) {
      return '(${phoneNumber.substring(0, 3)}) ${phoneNumber.substring(4, 7)} ${phoneNumber.substring(7)}';
    }
    return phoneNumber;
  }

  static String intenationalFormatPhoneNumber(String phoneNumber) {
    //Replace any non-digits characters from the phone number
    var digitsOnly = phoneNumber.replaceAll(RegExp(r'\D'), '');

    //Extract the country code from the didgitaOnly
    String countruCode = '+${digitsOnly.substring(0, 2)}';
    digitsOnly = digitsOnly.substring(2);

    //Add remaining didgits with proper formatting
    final formattedNumber = StringBuffer();
    formattedNumber.write('($countruCode)');

    int i = 0;
    while (i < digitsOnly.length) {
      int groupLenght = 2;
      if (i == 0 && countruCode == '+1') {
        groupLenght = 3;
      }

      int end = i + groupLenght;
      formattedNumber.write(digitsOnly.substring(i, end));

      if (end < digitsOnly.length) {
        formattedNumber.write('  ');
      }

      i = end;
    }
    return formattedNumber.toString();
  }
}
