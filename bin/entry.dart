import 'dart:io';

import 'car.dart';
import 'motocicle.dart';
import 'parking_lot.dart';

class Entry {
  static final _pparkingLot = ParkingLot();

  static void addNewVeicle() {
    print('Deseja cadastrar ou sair?');
    print('0-saida, 1- cadastro, 2- nomes, 3- valor total, 4- quatidade de carros e motos');
    final entry = stdin.readLineSync();
    switch(entry) {
      case '1':
        print('O veiculo é um carro ou uma moto?');
        print('1 - carro, 2 - moto?');
        final entryType = stdin.readLineSync();
        if(entryType != '1' && entryType != '2') {
          throw Exception('Valor invalido');
        };
        final type = entryType == '1' ? 'carro' : 'moto';

        print('Qual o nome do $type');
        String name = stdin.readLineSync() ?? 'Nome invalido';
        print('Qual o modelo do $type?');
        final model = stdin.readLineSync() ?? 'Vodelo invalido';
        print('Qual o tempo de permanencia?');
        var pryce = stdin.readLineSync() ?? '0';
        int pryceNumber = int.parse(pryce);

        entryType == '1' ?
        Car(name, model, pryceNumber):
        Motocicle(name, model, pryceNumber);
        addNewVeicle();

      case '2':
        print(_pparkingLot.names);

      case '3':
        print(_pparkingLot.totalPrice);

      case '4':
        print(_pparkingLot.totalVeiclesByType);

      case '0':
        return;

    };
    addNewVeicle();
  }
}