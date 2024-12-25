void main() {
  // var vehicle_1 = Vehicle(nama: "vehicle_xx", merek: "XX");    // error because Abstract can't be instance
  // print("nama: ${vehicle_1.nama} merek: ${vehicle_1.merek}");

  var truck_1 = Truck(truckNama: "truck_xx", truckMerek: "XX", setLoad: 10);
  print(
      "nama: ${truck_1.nama} merek: ${truck_1.merek} maxLoad: ${truck_1.maxLoad}");

  var bus_1 = Bus(busNama: "truck_xx", busMerek: "XX", setPassenger: 10);
  print(
      "nama: ${bus_1.nama} merek: ${bus_1.merek} maxPassenger: ${bus_1.maxPassenger}");
}

abstract class Vehicle {
  String? nama;
  String? merek;

  Vehicle({required this.nama, this.merek});
}

class Truck extends Vehicle {
  int? maxLoad;

  Truck({required String truckNama, String? truckMerek, int? setLoad})
      : super(nama: truckNama, merek: truckMerek) {
    maxLoad = setLoad;
  }
}

class Bus extends Vehicle {
  int? maxPassenger;

  Bus({required String busNama, String? busMerek, int? setPassenger})
      : super(nama: busNama, merek: busMerek) {
    maxPassenger = setPassenger;
  }
}
