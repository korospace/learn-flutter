void main() {
  // List
  List<String> list_nama = ["bagas", "ruby", "johan"];

  list_nama.forEach((nama) => print("nama: $nama"));

  // Set
  Set set_nama = {"bagas", "ruby", "johan"};

  print(set_nama);

  // Map
  Map dataObject = {
    list_nama: ["bagas", "ruby", "johan"],
    set_nama: {"bagas", "ruby", "johan"}
  };

}
