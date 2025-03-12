import 'dart:io';

void main() {
  stdout.write('Masukkan nama Anda: ');
  String nama = stdin.readLineSync()!;
  print('Halo, $nama!');

  stdout.write('Masukkan umur Anda: ');
  try {
    String inputUmur = stdin.readLineSync()!;
    int umur = int.parse(inputUmur);
    print('Umur Anda: $umur tahun');
  } catch (e) {
    print('Input umur tidak valid.');
  }
}