import 'veicles.dart';

class ParkingLot {
  static final List<Veicles> _veicles = [];

  static void addVeicle(Veicles veicle) {
    _veicles.add(veicle);
  }

  get total => _veicles.length;
  get names => _veicles.map((e) => e.name);
  get cars => _veicles.where((element) => element.wheels == 4);
  get motos => _veicles.where((element) => element.wheels == 2);
  get totalPrice => _veicles.fold<num>(0, (previousValue, element) => previousValue + element.price);
  get totalVeiclesByType {
    var carsNumber = _veicles.where((element) => element.wheels == 4).length;
    var motosNumber = _veicles.where((element) => element.wheels == 2).length;
    return 'Um total de $carsNumber carros e $motosNumber motos';
  }
}