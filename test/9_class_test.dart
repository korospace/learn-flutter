void main() {
  // var pakaian1 = Pakaian("baju_xx", "XX");                   // positional
  // var pakaian1 = Pakaian(namaSet:"baju_xx", merekSet: "XX"); // named parameter
  var pakaian1 = Pakaian(nama: "baju_xx", merek: "XX"); // named direct

  print(
      "nama: ${pakaian1.nama} merek: ${pakaian1.merek} ukuran: ${pakaian1.getUkuran}");

  pakaian1.setUkuran = "XL";

  print(
      "nama: ${pakaian1.nama} merek: ${pakaian1.merek} ukuran: ${pakaian1.getUkuran}");
}

class Pakaian {
  String? nama;
  String? merek;
  String? _ukuran; // private

  // -- positional parameter --
  // Pakaian(namaSet, merekSet) {
  //   nama = namaSet;
  //   merek = merekSet;
  // }
  // -- direct positional --
  // Pakaian(this.nama, this.merek);
  // -- named parameter --
  // Pakaian({String? namaSet, String? merekSet}) {
  //   nama = namaSet;
  //   merek = merekSet;
  // }
  // -- direct named
  Pakaian({required this.nama, this.merek});

  // void setUkuran(String ukuran) {
  //   _ukuran = ukuran;
  // }
  set setUkuran(String? ukuran) {
    _ukuran = ukuran;
  }

  // String? getUkuran() {
  //   return _ukuran;
  // }
  // String? get getUkuran {
  //   return _ukuran;
  // }
  String? get getUkuran => _ukuran;
}
