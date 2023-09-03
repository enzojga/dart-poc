import 'entry.dart';

void main(List<String> arguments) {
  try{
    Entry.addNewVeicle();
  } catch (e){
    throw Exception('Valor invalido');
  }

}
