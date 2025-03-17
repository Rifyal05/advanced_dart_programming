class Kotak<T> {
  T isi;
  Kotak(this.isi);

  T getIsi() {
    return isi;
  }
}

void main() {
  Kotak<int> kotakInt = Kotak(10);
  print(kotakInt.getIsi()); // Output: 10

  Kotak<String> kotakString = Kotak("Hello");
  print(kotakString.getIsi()); // Output: Hello
}