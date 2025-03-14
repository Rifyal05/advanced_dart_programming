import 'dart:io';

void main(){
  int bagi(int a, int b) {
    if (b == 0) {
      throw ArgumentError('Pembagian oleh nol tidak diizinkan.');
    }
    return a ~/ b;
  }

  try {
    stdout.write("Masukkan Angka 1 : ");
    String? input = stdin.readLineSync()!;
    int angka = int.tryParse(input ?? '')!;
    stdout.write("Masukkan Angka 2 : ");
    String? input2 = stdin.readLineSync()!;
    int angka1 = int.tryParse(input2 ?? '')!;

   int hasil = bagi(angka, angka1);
    print('Hasil: $hasil');
  } catch (e) {
    print('Error: $e');
  }
}