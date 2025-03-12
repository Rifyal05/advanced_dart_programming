import 'dart:io';

void main(){

  print("1 . Perkalian");
  print("1 . Pembagian");
  print("1 . Tambah");
  print("1 . Kurang");
  stdout.write("Masukkan Pilihan (1/2/3/4) : ");
  String? inputS = stdin.readLineSync();
  int? input = int.tryParse(inputS ?? '');

  // Kode di bawah akan melakukan input untuk setiap pilihan tapi untuk input selain 4 angka,
  // masih akan menjalankan input masukan angka baru menjalankan blok elese
  // karena input ini dijalankan terlebih dahulu sebelum if else

  // stdout.write("Masukan Angka ke-1 : ");
  // String inputangka = stdin.readLineSync()!;
  // int? angka1 = int.tryParse(inputangka)!;
  // stdout.write("Maukan angka ke-2 : ");
  // String inputangka2 = stdin.readLineSync()!;
  // int? angka2 = int.tryParse(inputangka2)!;

  if(input == 1) {
    stdout.write("Masukan Angka ke-1 : ");
    String inputangka = stdin.readLineSync()!;
    int? angka1 = int.tryParse(inputangka)!;
    stdout.write("Maukan angka ke-2 : ");
    String inputangka2 = stdin.readLineSync()!;
    int? angka2 = int.tryParse(inputangka2)!;
    int hasil = angka1 * angka2;
    print("Hasil Perkalian : $hasil");
  }
  else if(input == 2) {
    stdout.write("Masukan Angka ke-1 : ");
    String inputangka = stdin.readLineSync()!;
    int? angka1 = int.tryParse(inputangka)!;
    stdout.write("Maukan angka ke-2 : ");
    String inputangka2 = stdin.readLineSync()!;
    int? angka2 = int.tryParse(inputangka2)!;
    double hasil = angka1 / angka2;
    print("Hasil Pembagian : $hasil");
  }
  else if(input == 3){
    stdout.write("Masukan Angka ke-1 : ");
    String inputangka = stdin.readLineSync()!;
    int? angka1 = int.tryParse(inputangka)!;
    stdout.write("Maukan angka ke-2 : ");
    String inputangka2 = stdin.readLineSync()!;
    int? angka2 = int.tryParse(inputangka2)!;
    int hasil = angka1 + angka2;
    print("Hasil Penambahan : $hasil");
  }
  else if(input == 4) {
    stdout.write("Masukan Angka ke-1 : ");
    String inputangka = stdin.readLineSync()!;
    int? angka1 = int.tryParse(inputangka)!;
    stdout.write("Maukan angka ke-2 : ");
    String inputangka2 = stdin.readLineSync()!;
    int? angka2 = int.tryParse(inputangka2)!;
    int hasil = angka1 - angka2;
    print("Hasil Pengurangan : $hasil");
  }
  else{
    print("Input Tidak Valid");
  }


}