Stream<int> sensorDataStream() async* {
  for (int i = 1; i <= 10; i++) {
    await Future.delayed(const Duration(seconds: 1));
    yield i;
  }
}

void main() {
  int count = 0;
  sensorDataStream().listen((data) {
    print("Data Sensor: $data");
    count++;
    if (count >= 10) {
      print("Pengambilan data sensor selesai.");
      return;
    }
  });
  print("Mengambil data sensor...");
}