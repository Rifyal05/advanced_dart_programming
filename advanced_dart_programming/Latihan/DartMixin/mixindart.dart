mixin Loggable {
  void log(String message) {
    DateTime now = DateTime.now();
    String timestamp = now.toString();
    print('[$timestamp] $message');
  }
}

class User with Loggable {
  String name;
  int age;

  User(this.name, this.age);

  void sayHello() {
    log('User $name mengatakan Hello, oo/.');
  }

  void celebrateBirthday() {
    age++;
    log('User $name Sekarang berumur $age tahun.');
  }
}
class Product with Loggable {
  String name;
  double price;

  Product(this.name, this.price);

  void displayInfo() {
    log('Produk $name Harga \$${price.toStringAsFixed(2)}.');
  }

  void applyDiscount(double discount) {
    price -= discount;
    log('Diskon digunakan untuk produk $name. Harga sekarang: \$${price.toStringAsFixed(2)}.');
  }
}

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
  User user = User('Pancake', 30);
  user.sayHello();
  user.celebrateBirthday();

  Product product = Product('Laptop HP', 9000000);
  product.displayInfo();
  product.applyDiscount(100.00);
}

