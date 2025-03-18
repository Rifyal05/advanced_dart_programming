class Form extends Validatable with Validator {
  String name;
  String email;

  Form(this.name, this.email);

  @override
  bool isValid() {
    return name.isNotEmpty && email.isNotEmpty;
  }
}

abstract class Validatable {
  bool isValid();
}

mixin Validator on Validatable {
  void validate() {
    if (isValid()) {
      print('Validasi berhasil.');
    } else {
      print('Validasi gagal.');
    }
  }
}

void main() {
  Form form1 = Form('Merakkkk', 'meral.putih@zoomail.com');
  form1.validate();

  Form form2 = Form('', 'Email anda Tidak Valid');
  form2.validate(); // Output: Validasi gagal.
}
