Future<String> fetchData() async {
  await Future.delayed(const Duration(seconds: 2));
  return "Data fetched";
}

void main() async {
  print("Fetching data...");
  try {
    String data = await fetchData();
    print(data);
  } catch (error) {
    print("Error: $error");
  }
}