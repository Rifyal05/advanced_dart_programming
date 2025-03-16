import 'dart:isolate';

int factorial(int n) {
  if (n == 0) {
    return 1;
  }
  return n * factorial(n - 1);
}

void factorialIsolate(SendPort sendPort) {
}

void main() async {
}