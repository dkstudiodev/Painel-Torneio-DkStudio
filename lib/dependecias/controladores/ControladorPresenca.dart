import 'package:mobx/mobx.dart';
part 'ControladorPresenca.g.dart';

class ControladorPresenca = _ControladorPresencaBase with _$ControladorPresenca;

abstract class _ControladorPresencaBase with Store {

  @observable
  bool presenca = false;

  @action
  Presenca(bool value){

    presenca = value;
    print(presenca);

  }

}