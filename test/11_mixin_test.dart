void main() {
  var truck_1 = Truck(truckNama: "truck_xx", truckMerek: "XX", setLoad: 10);
  truck_1.setTotalBan = 10;
  print(
      "nama: ${truck_1.nama} merek: ${truck_1.merek} maxLoad: ${truck_1.maxLoad} totalBan: ${truck_1.getTotalBan}");

  var bus_1 = Bus(busNama: "truck_xx", busMerek: "XX", setPassenger: 10);
  bus_1.setTotalBan = 12;
  print(
      "nama: ${bus_1.nama} merek: ${bus_1.merek} maxPassenger: ${bus_1.maxPassenger} totalBan: ${bus_1.getTotalBan}");
}

abstract class Vehicle {
  String? nama;
  String? merek;

  Vehicle({required this.nama, this.merek});
}

mixin Utils {
  int? _totalBan;

  set setTotalBan(int value) {
    _totalBan = value;
  }

  get getTotalBan => _totalBan;
}

class Truck extends Vehicle with Utils {
  int? maxLoad;

  Truck({required String truckNama, String? truckMerek, int? setLoad})
      : super(nama: truckNama, merek: truckMerek) {
    maxLoad = setLoad;
  }
}

class Bus extends Vehicle with Utils {
  int? maxPassenger;

  Bus({required String busNama, String? busMerek, int? setPassenger})
      : super(nama: busNama, merek: busMerek) {
    maxPassenger = setPassenger;
  }
}
