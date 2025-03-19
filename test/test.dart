import 'package:test/test.dart';

int tambah(int a, int b) {
  return a + b;
}

void main() {
  test('Test fungsi tambah', () {
    expect(tambah(1, 2), 3);
    expect(tambah(-1, 1), 0);
    expect(tambah(-1, -1), -2);
  });
}