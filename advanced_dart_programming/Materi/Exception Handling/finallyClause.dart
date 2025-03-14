import 'dart:io';

void main(){
  try {
    stdout.write("Masukan Ummur : ");
    int umur = int.parse(stdin.readLineSync()!);
    print('Umur: $umur');
  } catch (e) {
    print('Terjadi error: $e');
  } finally {
    print('Proses selesai.');
  }
}