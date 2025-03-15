// Latihan 3: Konversi Fahrenheit ke Celcius

import 'dart:io';

double fahrenheitToCelsius(double fahrenheit) {
  return (fahrenheit - 32) * 5 / 9;
}

void main() {
  stdout.write("Masukkan suhu dalam Fahrenheit: ");
  String? fahrenheitInput = stdin.readLineSync();

  try {
    if (fahrenheitInput == null) {
      throw FormatException("Input tidak boleh kosong.");
    }

    double fahrenheit = double.parse(fahrenheitInput);
    double celsius = fahrenheitToCelsius(fahrenheit);
    print("Suhu dalam Celsius: $celsius");
  } on FormatException catch(e){
    print("Input Tidak Valid. Masukkan Angka!! . $e");
  }
  catch (e) {
    print("Terjadi error: $e");
  }
}
