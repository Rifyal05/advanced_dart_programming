import 'dart:io';

void main() {
  stdout.write("Input Umur Anda : ");
  String inputUmur = stdin.readLineSync()!;

  try {
    int umur = int.parse(inputUmur);
    // Menggunakan If-Else
    if (umur >= 0 && umur <= 150) {
      print('Umur valid: $umur');
    } else {
      print('Umur tidak valid.');
    }
  } catch (e) {
    print("Masukkan Angka dan umur yang Valid");
  }
  // Menggunakan Fungsi
  bool isUmurValid(int umur) {
    return umur >= 0 && umur <= 150;
  }

  stdout.write("Input Umur Anda : ");
  String inUmur = stdin.readLineSync()!;
  try {
    int umurku = int.parse(inUmur);
    if (isUmurValid(umurku)) {
      print('Umur valid: $umurku');
    } else {
      print('Umur tidak valid.');
    }
  } catch (e) {
    print("Masukkan Angka dan Umur yang valid");
  }

  // Menggunkan Regular Expression
  stdout.write("Input email Anda : ");
  String inputEmail = stdin.readLineSync()!;
  RegExp emailRegex = RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$');

  if (emailRegex.hasMatch(inputEmail)) {
    print('Email valid: $inputEmail');
  } else {
    print('Email tidak valid.');
  }
}
