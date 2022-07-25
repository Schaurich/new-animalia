// ignore_for_file: depend_on_referenced_packages

import 'package:intl/intl.dart';

class DateHelper {
  static String getDateToString(DateTime date) {
    return DateFormat('dd/MM/yyyy').format(date);
  }

  static String getHourToString(DateTime date) {
    return DateFormat('HH:mm').format(date);
  }

  static String getFormattedDateTimeToString(DateTime date) {
    return DateFormat('dd/MM/yyyy - HH:mm').format(date);
  }

  static String getYearsAndMonthFromDate(DateTime date) {
    var dateInDays = DateTime.now().difference(date).inDays;
    if (dateInDays < 30) {
      return '$dateInDays dias';
    }
    if (dateInDays == 30) {
      return '1 mês';
    }
    if (dateInDays > 30 && dateInDays < 365) {
      return '${dateInDays ~/ 30} meses';
    }
    if (dateInDays > 365) {
      return '${dateInDays ~/ 365} anos';
    }
    if (dateInDays == 365) {
      return '1 ano';
    }
    return ' ';
  }
}
