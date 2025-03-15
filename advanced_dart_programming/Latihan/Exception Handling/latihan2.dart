// Latihan 2: KOnversi Celcius ke Fahrenheit

import 'dart:io';

double celsiusToFahrenheit(double celsius) {
  return (celsius * 9 / 5) + 32;
}

void main() {
  stdout.write("Masukkan suhu dalam Celsius: ");
  String? celsiusInput = stdin.readLineSync();

  try {
    if (celsiusInput == null) {
      throw FormatException("Input tidak boleh kosong.");
    }
    double celsius = double.parse(celsiusInput);
    double fahrenheit = celsiusToFahrenheit(celsius);
    print("Suhu dalam Fahrenheit: $fahrenheit");
  } on FormatException catch (e) {
    print("Terjadi error: ${e.message}. Pastikan input adalah angka yang valid.");
  } catch (e) {
    print("Terjadi error yang tidak terduga: $e");
  }
}