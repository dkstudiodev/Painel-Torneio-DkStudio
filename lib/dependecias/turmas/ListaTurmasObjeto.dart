
import 'package:mobx/mobx.dart';

import '../Turmas.dart';

part 'ListaTurmasObjeto.g.dart';

class ListaTurmasObjeto = _ListaTurmasObjetoBase with _$ListaTurmasObjeto;

abstract class _ListaTurmasObjetoBase with Store {
  @observable
  List<Turmas> ListaTurmasPontos = [
    Turmas('S/Q - Junior 14:30', 'italo', 5),
    Turmas('S/Q - Kids 16:00', 'italo', 5),
    Turmas('S/Q - Senior 20:00', 'italo', 5),
    Turmas('S - Junior 16:00', 'italo', 5),
    Turmas('S/Q - Junior 14:00', 'Ruan', 5),
    Turmas('S/Q - Junior 17:30', 'Ruan', 5),
    Turmas('S/Q - Juvenil 18:30', 'Ruan', 5),
    Turmas('S/Q - Junior 19:30', 'Ruan', 5),
    Turmas('T/Q - Junior 1 14:30', 'Ruan', 5),
    Turmas('T/Q - KIDS 1 16:00', 'Ruan', 5),
    Turmas('T/Q - KIDS 2 17:00', 'Ruan', 5),
    Turmas('T/Q - Junior 18:00', 'Ruan', 5),
    Turmas('T/Q - Juvenil 19:30', 'Ruan', 5),
    Turmas('T/Q - Senior 20:30', 'Ruan', 5),
    Turmas('T/Q - Junior 2 18:30', 'Lele', 5),
    Turmas('T/Q - Juvenil 2 19:30', 'Lele', 5),
    Turmas('S/Q - Jazz S 21:00', 'Marcella', 5),
    Turmas('T/Q - Jazz Kids 14:30', 'Marcella', 5),
    Turmas('T/Q - Jazz Junior 15:30', 'Marcella', 5),
    Turmas('S/Q - Kids 16:30', 'Gladson', 5),
    Turmas('T/Q - Junior 09:00', 'Gladson', 5),
    Turmas('T/Q - Kids 10:00', 'Gladson', 5),
    Turmas('T/Q - Junior 16:30', 'Gladson', 5),
    Turmas('T/Q - Juvenil 17:30', 'Gladson', 5),
    Turmas('S/Q - K-pop 20:30', 'Dener', 5),
    Turmas('S/Q - Juvenil 17:00', 'Nagao', 5),
    Turmas('S/Q - Juvenil 18:00', 'Nagao', 5),
    Turmas('S/Q - Senior 19:00', 'Nagao', 5),
    Turmas('Sab - K-pop 14:00', 'Carol', 5),
  ];

  @observable
  List professores = [
    'Marcella',
    'italo',
    'Ruan',
    'Nagao',
    'Dener',
    'Lele',
    'Carol',
    'Gladson',
  ];

  @observable
  String primeiraTurma = 'T/Q - Jazz Junior 15:30';

  @observable
  List listafiltradaFN = [];

  @action
  String? SetFirstValueList(String nomeProfessor) {
    for (var lista in ListaTurmasPontos) {
      if (lista.professor == nomeProfessor) {
        listafiltradaFN.add(lista);
        primeiraTurma = lista.turma;
      }
    }
    return primeiraTurma;
  }

  @observable
  List<Turmas> listaFiltrada = [];

  @action
  List filtrarLista(String nomeProfessor) {
    List listafiltradaFN = [];
    for (var lista in ListaTurmasPontos) {
      if (lista.professor == nomeProfessor) {
        listafiltradaFN.add(lista);
      }
    }
    return listafiltradaFN;
  }

  @observable
  bool bloqueia= true;

  bool verificaPontos(Turmas turma){

    if(turma.pontos <=0){
      bloqueia = false;
    }
    return bloqueia;
  }

  @action
  void TiraPotntosTurma(String? turma, int setValor) {
    for (var nomeTurma in ListaTurmasPontos) {
      if (nomeTurma.turma == turma) {
        print(
            'A pontuacao da turma ${nomeTurma.turma} e de ${nomeTurma.pontos}');
        if(nomeTurma.pontos <= 0){
          bloqueia = false;
          break;
        }else if( nomeTurma.pontos <= 0){
          nomeTurma.pontos -= setValor;
          bloqueia = true;
        }
        print(
            'A pontuacao da turma ${nomeTurma.turma} e de ${nomeTurma.pontos}');
      }
    }
  }
  @observable
  List kids = [
    'S/Q - Kids 16:00',
    'S/Q - Kids 16:30',
    'T/Q - KIDS 1 17:00',
    'T/Q - Jazz Kids 14:30',
    'T/Q - Junior 09:00',
    'T/Q - Kids 10:00',
  ];

  @observable
  List juniors = [
    'S/Q - Junior 19:30',
    'S/Q - Junior 17:30',
    'S/Q - Junior 14:30',
    'S/Q - Junior 14:00',
    'T/Q - Junior 1 14:30',
    'T/Q - Junior 2 18:30',
    'T/Q - Junior 18:00',
    'T/Q - Jazz Junior 15:30',
    'T/Q - Junior 16:30',
    'S - Junior 16:00',
  ];

  @observable
  List seniors = [
    'S/Q - Jazz S 21:00',
    'S/Q - K-pop 20:30',
    'S/Q - Senior 20:00',
    'S/Q - Senior 19:00',
    'S/Q - Juvenil 18:30',
    'S/Q - Juvenil 18:00',
    'S/Q - JUvenil 17:30',
    'T/Q - Senior 20:30',
    'T/Q - Juvenil 19:30',
    'T/Q - Juvenil 17:30',
  ];

  @observable
  List seniors2 = [
    'Sab - K-pop 14:00',
  ];
}
