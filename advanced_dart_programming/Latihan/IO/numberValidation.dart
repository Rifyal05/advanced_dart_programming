import 'dart:io';


void main(){
  stdout.write("Masukan Nomor Telepon : ");
  String? nomor = stdin.readLineSync();

  if(nomor != null && isValid(nomor)){
    print("Nomor Telepon Valid");
  }
  else{
    print("nomor telepon tidak valid");
  }
}

bool isValid(String nomor){
  nomor = nomor.replaceAll(RegExp(r'[ -]'), '');

  if(nomor.startsWith('+')) {
    nomor = nomor.substring(1);
  }

  if (!RegExp(r'^[0-9]+$').hasMatch(nomor)) {
    return false;
  }
  if(nomor.length >= 10 && nomor.length <= 14){
    return true;
  }
  return false;

}