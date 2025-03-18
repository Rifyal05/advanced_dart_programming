mixin Terbang {
  void terbang() {
    print("Terbang!");
  }
}
class Burung with Terbang {
}

class Pesawat with Terbang {
}

void main() {
  var burung = Burung();
  burung.terbang();

  var pesawat = Pesawat();
  pesawat.terbang();
}