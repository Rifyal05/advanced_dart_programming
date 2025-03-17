import 'dart:isolate';

int factorial(int n) {
  if (n == 0) {
    return 1;
  }
  return n * factorial(n - 1);
}

void factorialIsolate(SendPort sendPort) {
  ReceivePort isolateReceivePort = ReceivePort();
  sendPort.send(isolateReceivePort.sendPort);

  isolateReceivePort.listen((message) {
    int number = message;
    int result = factorial(number);
    sendPort.send(result);
  });
}


void main() async {
  ReceivePort mainReceivePort = ReceivePort();
  Isolate isolate = await Isolate.spawn(factorialIsolate, mainReceivePort.sendPort);
  List<dynamic> results = [];
  int number = 8;
  mainReceivePort.listen((message) async {
    results.add(message);
    if (results.length == 2) {
      print('Faktorial dari $number adalah ${results[1]}');
      mainReceivePort.close();
      isolate.kill();
    }
    if (results.length == 1){
      SendPort isolateSendPort = results[0];
      isolateSendPort.send(number);
    }
  });
}