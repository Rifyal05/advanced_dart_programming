mixin Beroda on Kendaraan {
  void jumlahRoda() {
    print("Jumlah roda: $roda");
  }
}

class Kendaraan {
  int roda = 0;
}

class Mobil extends Kendaraan with Beroda {
  Mobil() {
    roda = 4;
  }
}

void main() {
  var mobil = Mobil();
  mobil.jumlahRoda();
}