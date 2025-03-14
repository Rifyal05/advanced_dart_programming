import 'dart:io';

void main (){
  try {
    stdout.write("Masukkan Umur : ");
    int umur = int.parse(stdin.readLineSync()!);
    print('Umur: $umur');
  } on FormatException {
    print('Input umur tidak valid. Masukkan angka!!');
  } catch (e) {
    print('Terjadi error lain: $e');
  }}