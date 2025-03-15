import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() async {
  await initializeDateFormatting('id_ID', null);
  DateTime now = DateTime.now();


  String formattedDate = DateFormat('yy-MM-dd HH:mm:ss').format(now);
  print("Formatted Dare : $formattedDate");
  String formattedDate2 = DateFormat.yMMMEd().format(now);
  print("Formatted Dare : $formattedDate2");
  String formattedDate3 = DateFormat.Hms().format(now);
  print("Formatted Dare : $formattedDate3");

  String formattanggallokal = DateFormat.yMMMMEEEEd('id_ID').format(now);
  print("format tanggal lokal : $formattanggallokal");
}