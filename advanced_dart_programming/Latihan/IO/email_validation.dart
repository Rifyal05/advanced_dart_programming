import 'dart:io';

void main() {
  stdout.write("Masukkan alamat email: ");
  String? email = stdin.readLineSync();

  if (email != null && isValidEmail(email)) {
    print("Email valid");
  } else {
    print("Email tidak valid");
  }
}

bool isValidEmail(String email) {
  if (!email.contains('@')) {
    return false;
  }

  List<String> parts = email.split('@');
  if (parts.length != 2) {
    return false;
  }

  String username = parts[0];
  String domain = parts[1];

  if (username.isEmpty) {
    return false;
  }
  if (!domain.contains('.')) {
    return false;
  }
  List<String> domainParts = domain.split('.');
  if (domainParts.length < 2) {
    return false;
  }

  if (domainParts.last.length < 2) {
    return false;
  }

  return true;
}