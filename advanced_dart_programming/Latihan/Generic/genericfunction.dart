class Tumpukan<T> {
  final List<T> _items = [];

  void push(T item) {
    _items.add(item);
  }

  T? pop() {
    if (_items.isEmpty) {
      return null;
    }
    return _items.removeLast();
  }

  T? peek() {
    if (_items.isEmpty) {
      return null;
    }
    return _items.last;
  }

  bool isEmpty() {
    return _items.isEmpty;
  }
}

void main() {
  var tumpukanString = Tumpukan<String>();
  tumpukanString.push('Buku 1');
  tumpukanString.push('Buku 2');
  tumpukanString.push('Buku 3');

  print('Puncak tumpukan: ${tumpukanString.peek()}');
  print('Tumpukan kosong? ${tumpukanString.isEmpty()}');

  print('Elemen yang dihapus: ${tumpukanString.pop()}');
  print('Puncak tumpukan setelah pop: ${tumpukanString.peek()}');
  var tumpukanInt = Tumpukan<int>();
  tumpukanInt.push(10);
  tumpukanInt.push(20);

  print('Puncak tumpukan int: ${tumpukanInt.peek()}');
  print('Elemen yang dihapus dari tumpukan int: ${tumpukanInt.pop()}');

  // Memeriksa apakah tumpukan kosong setelah pop
  print('Tumpukan int kosong? ${tumpukanInt.isEmpty()}');
  tumpukanInt.pop();
  print('Tumpukan int kosong? ${tumpukanInt.isEmpty()}');
}