import 'dart:io';

void main() {
  print("Pilih Operasi:");
  print("1. Perkalian");
  print("2. Pembagian");
  print("3. Penambahan");
  print("4. Pengurangan");

  stdout.write("Masukkan Pilihan (1/2/3/4): ");
  String? inputS = stdin.readLineSync();
  int? input = int.tryParse(inputS ?? '');

  if (input == 1 || input == 2 || input == 3 || input == 4) {
    stdout.write("Masukkan Angka ke-1: ");
    String? angka1S = stdin.readLineSync();
    int? angka1 = int.tryParse(angka1S ?? '');

    stdout.write("Masukkan Angka ke-2: ");
    String? angka2S = stdin.readLineSync();
    int? angka2 = int.tryParse(angka2S ?? '');

    if (angka1 != null && angka2 != null) {
      switch (input) {
        case 1:
          print("Hasil Perkalian: ${angka1 * angka2}");
          break;
        case 2:
          print("Hasil Pembagian: ${angka1 / angka2}");
          break;
        case 3:
          print("Hasil Penambahan: ${angka1 + angka2}");
          break;
        case 4:
          print("Hasil Pengurangan: ${angka1 - angka2}");
          break;
      }
    } else {
      print("Input angka tidak valid.");
    }
  } else {
    print("Input pilihan tidak valid.");
  }
}