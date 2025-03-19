class ContohObjek {
  String nama;
  List<int> data;

  ContohObjek(this.nama, this.data);

  // Metode untuk mensimulasikan penggunaan memori
  void gunakanMemori() {
    for (int i = 0; i < 1000; i++) {
      data.add(i);
    }
    print('Memori digunakan oleh $nama');
  }

  // Opsional: Metode untuk membersihkan referensi
  void bersihkanReferensi() {
    data.clear();
    print('Referensi $nama dibersihkan');
  }
}

void main() {
  // Membuat beberapa objek
  ContohObjek objek1 = ContohObjek('Objek 1', []);
  ContohObjek objek2 = ContohObjek('Objek 2', []);
  ContohObjek objek3 = ContohObjek('Objek 3', []);

  // Menggunakan memori
  objek1.gunakanMemori();
  objek2.gunakanMemori();
  objek3.gunakanMemori();

  // Membersihkan referensi
  objek1.bersihkanReferensi();
  objek2.bersihkanReferensi();
  objek3.bersihkanReferensi();

  // Membuat objek berumur pendek
  for (int i = 0; i < 10; i++) {
    ContohObjek objekPendek = ContohObjek('Objek Pendek $i', []);
    objekPendek.gunakanMemori();
    // ObjekPendek akan dibebaskan oleh garbage collector setelah keluar dari scope loop
  }

  // Membuat objek dengan siklus referensi (contoh buruk)
  ContohObjek objekA = ContohObjek('Objek A', []);
  ContohObjek objekB = ContohObjek('Objek B', []);
  objekA.data.add(objekB.hashCode);
  objekB.data.add(objekA.hashCode);
  objekA.data.clear();
  objekB.data.clear();

  print('Program selesai');
}