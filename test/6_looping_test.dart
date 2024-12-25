void main() {
  List<String> arr_nama = ["bagas", "ruby", "johan"];

  arr_nama.forEach((nama) => print("nama: $nama"));

  List<String> arr_nama_2 = ["bagas", "ruby", "johan"];

  for (var nama in arr_nama_2) {
    print("Nama: $nama");
  }
}
