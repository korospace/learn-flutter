void main() {
  String? nama;

  print(nama?.length ?? "tidak ada karakter");

  if (nama == null) {
    print("tidak ada karakter");
  } else {
    print(nama!.length);
  }
}
