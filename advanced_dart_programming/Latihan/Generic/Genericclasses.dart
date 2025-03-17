List<T> balikUrutan<T>(List<T> list) {
  List<T> reversedList = List.from(list.reversed);
  return reversedList;
}

void main() {
  List<int> angka = [1, 2, 3, 4, 5];
  List<int> angkaTerbalik = balikUrutan(angka);
  print('Urutan awal: $angka');
  print('Urutan terbalik: $angkaTerbalik');

  List<String> kata = ['apel', 'pisang', 'ceri', 'durian'];
  List<String> kataTerbalik = balikUrutan(kata);
  print('Urutan awal: $kata');
  print('Urutan terbalik: $kataTerbalik');
}