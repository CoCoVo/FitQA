import 'package:intl/intl.dart';

class NumberUtils {
  static String thousandSeparate(int num) {
    return NumberFormat.decimalPattern("ko").format(num);
  }
}
