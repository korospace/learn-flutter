void main() {
  try {
    int tes = int.parse("abc");

    print(tes);
  } on FormatException {
    print("string nomor tidak valid");
  } catch (e) {
    if (e == FormatException) {
      // print("string nomor tidak valid");
    } else {
      print(e);
    }
  }
}
