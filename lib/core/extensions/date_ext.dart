import 'package:intl/intl.dart';

extension MyDateExtension on DateTime {
  String get getStarteDate {
    DateFormat transactionFormatDate = DateFormat("dd/MM");
    return transactionFormatDate.format(this);
  }

  String get getEndDate {
    DateFormat transactionFormatDate = DateFormat("dd/MM/yyy");
    return transactionFormatDate.format(this);
  }
}
