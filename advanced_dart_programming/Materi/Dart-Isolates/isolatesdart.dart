import 'dart:isolate';

void main() async {
  final receivePort = ReceivePort();
  final isolate = await Isolate.spawn(heavyTask, receivePort.sendPort);

  receivePort.listen((message) {
    print('Message from isolate: $message');
    receivePort.close();
    isolate.kill();
  });
}

void heavyTask(SendPort sendPort) {
  int sum = 0;
  for (int i = 0; i < 1000000000; i++) {
    sum += i;
  }
  sendPort.send(sum);
}