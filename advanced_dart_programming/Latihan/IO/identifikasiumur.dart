// Latihan 3: Umur Pengguna
// Buatlah program Dart yang meminta pengguna memasukkan umur mereka.
// Program harus menampilkan pesan apakah pengguna tersebut sudah dewasa atau belum

import 'dart:io';

void main() {
  stdout.write("Masukkan Umur Anda : ");
  String? input = stdin.readLineSync()!;

  try {
    int klasifikasi = int.parse(input);

    if (klasifikasi >= 18 && klasifikasi <= 200) {
      print("Anda adalah orang dewasa");
    } else if (klasifikasi < 18 && klasifikasi >= 0) {
      print("Anda adalah anak-anak");
    } else {
      print("Masukkan Umur Yang Valid");
    }
  } catch (e) {
    print("Input tidak valid. Harap masukkan angka.");
  }
}
