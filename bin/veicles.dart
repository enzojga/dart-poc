import 'parking_lot.dart';

abstract class Veicles {
  final int _wheels;
  final int _hours;
  final String _name;
  final String _model;

  var _priceHour = 5;

  Veicles(this._wheels, this._name, this._model, this._hours) {
    ParkingLot.addVeicle(this);
  }

  get wheels => _wheels;
  get name => _name;
  get model => _model;
  get price => _hours * _priceHour;
}