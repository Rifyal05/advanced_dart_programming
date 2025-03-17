class Hewan {
  void suara() {
    print("Suara hewan");
  }
}

class Kucing extends Hewan {
  @override
  void suara() {
    print("Meow!");
  }
}

class Anjing extends Hewan {
  @override
  void suara() {
    print("Guk guk!");
  }
}

class Kandang<T extends Hewan> {
  T hewan;
  Kandang(this.hewan);

  void bunyi() {
    hewan.suara();
  }
}

void main() {
  Kandang<Kucing> kandangKucing = Kandang(Kucing());
  kandangKucing.bunyi();

  Kandang<Anjing> kandangAnjing = Kandang(Anjing());
  kandangAnjing.bunyi();
}