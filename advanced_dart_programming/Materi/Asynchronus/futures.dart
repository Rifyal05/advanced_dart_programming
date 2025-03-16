Future<String> fetchUserData() {
  return Future.delayed(const Duration(seconds: 2), () {
    return "Nama Pengguna: Watermelon Boy";
  });
}

void main() {
  print("Fetching user data...");
  fetchUserData().then((result) {
    print(result);
  }).catchError((error) {
    print("Error: $error");
  });
  print("Done");
}