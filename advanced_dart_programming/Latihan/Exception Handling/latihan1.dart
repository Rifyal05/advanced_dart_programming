// Latihan 1: Validasi Password dengan Exception Handling

import 'dart:io';

class PasswordException implements Exception {
  String message;
  PasswordException(this.message);
  @override
  String toString() {
    return message;
  }
}

void validatePassword(String password) {
  // Password Minimal 8 karakter
  if(password.length <  8){
    throw PasswordException("Passwrod minimal 8 karakter");
  }
  // Password Minimal Menggunakan 1 Huruf Besar
  if(!password.contains(RegExp(r'[A-Z]'))){
    throw PasswordException("Password minimal memiliki 8 karakter, 1 huruf besar, 1 huruf kecil, dan 1 angka");
  }
  // Password Minimal Mengguanakan 1 Huruf Kecil
  if(!password.contains(RegExp(r'[a-z]'))){
    throw PasswordException("Password minimal memiliki 8 karakter, 1 huruf besar, 1 huruf kecil, dan 1 angka");
  }
  // Password Minimal Menggunakan 1 Angka
  if(!password.contains(RegExp(r'[0-9]'))){
    throw PasswordException("Password minimal memiliki 8 karakter, 1 huruf besar, 1 huruf kecil, dan 1 angka");
  }
}

void main() {
  stdout.write("Masukkan password: ");
  String? password = stdin.readLineSync();

  try {
    validatePassword(password!);
    print("Password valid");
  } on PasswordException catch (e) {
    print("Password tidak valid: $e");
  } catch (e) {
    print("Terjadi error: $e");
  }
}