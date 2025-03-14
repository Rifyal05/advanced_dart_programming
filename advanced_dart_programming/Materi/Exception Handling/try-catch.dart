import 'dart:io';

void main(){
  try {
    stdout.write("Masukkan umur : ");
    int umur = int.parse(stdin.readLineSync()!);
    print('Umur: $umur');
  } catch (e) {
    print('Terjadi error: $e');
  }
}