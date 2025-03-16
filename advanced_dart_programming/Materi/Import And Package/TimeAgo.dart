import 'package:intl/date_symbol_data_local.dart';
import 'package:timeago/timeago.dart' as timeago;

void main() async {
  await initializeDateFormatting('id_ID', null);

  DateTime now = DateTime.now();

  // buat objek DateTime untuk waktu yang berbeda
  DateTime yesterday = now.subtract(Duration(days: 1));
  DateTime tomorrow = now.add(Duration(days: 1));
  DateTime nextWeek = now.add(Duration(days: 7));
  DateTime lastMonth = DateTime(now.year, now.month - 1, now.day);

  // atur locale untuk timeago
  timeago.setLocaleMessages('id', timeago.IdMessages());

  // format tanggal menggunakan intl dan timeago
  String formattedNow = timeago.format(now, locale: 'id');
  String formattedYesterday = timeago.format(yesterday, locale: 'id');
  String formattedTomorrow = timeago.format(tomorrow, locale: 'id');
  String formattedNextWeek = timeago.format(nextWeek, locale: 'id');
  String formattedLastMonth = timeago.format(lastMonth, locale: 'id');

  // Menampilkan tanggal
  print('Sekarang: $formattedNow');
  print('Kemarin: $formattedYesterday');
  print('Besok: $formattedTomorrow');
  print('Minggu depan: $formattedNextWeek');
  print('Bulan lalu: $formattedLastMonth');
}
