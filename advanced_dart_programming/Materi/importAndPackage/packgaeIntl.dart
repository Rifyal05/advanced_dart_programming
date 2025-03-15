import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() async {
  await initializeDateFormatting('id_ID', null);
  DateTime now = DateTime.now();

  // Format tanggal dan waktu
  String formattedDate = DateFormat('yyyy-MM-dd HH:mm:ss').format(now);
  print('Formatted Date: $formattedDate');

  // Format tanggal saja
  String formattedDateOnly = DateFormat.yMMMd().format(now);
  print('Formatted Date Only: $formattedDateOnly');

  // Format waktu saja
  String formattedTimeOnly = DateFormat.Hm().format(now);
  print('Formatted Time Only: $formattedTimeOnly');

  // Format Lokal
  String formattedDateLocale = DateFormat.yMMMd('id_ID').format(now);
  print('Formatted Date Locale: $formattedDateLocale');
}