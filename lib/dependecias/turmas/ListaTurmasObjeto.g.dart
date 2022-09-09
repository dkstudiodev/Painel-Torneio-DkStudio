// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ListaTurmasObjeto.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ListaTurmasObjeto on _ListaTurmasObjetoBase, Store {
  final _$ListaTurmasPontosAtom =
      Atom(name: '_ListaTurmasObjetoBase.ListaTurmasPontos');

  @override
  List<Turmas> get ListaTurmasPontos {
    _$ListaTurmasPontosAtom.reportRead();
    return super.ListaTurmasPontos;
  }

  @override
  set ListaTurmasPontos(List<Turmas> value) {
    _$ListaTurmasPontosAtom.reportWrite(value, super.ListaTurmasPontos, () {
      super.ListaTurmasPontos = value;
    });
  }

  final _$professoresAtom = Atom(name: '_ListaTurmasObjetoBase.professores');

  @override
  List<dynamic> get professores {
    _$professoresAtom.reportRead();
    return super.professores;
  }

  @override
  set professores(List<dynamic> value) {
    _$professoresAtom.reportWrite(value, super.professores, () {
      super.professores = value;
    });
  }

  final _$primeiraTurmaAtom =
      Atom(name: '_ListaTurmasObjetoBase.primeiraTurma');

  @override
  String get primeiraTurma {
    _$primeiraTurmaAtom.reportRead();
    return super.primeiraTurma;
  }

  @override
  set primeiraTurma(String value) {
    _$primeiraTurmaAtom.reportWrite(value, super.primeiraTurma, () {
      super.primeiraTurma = value;
    });
  }

  final _$listafiltradaFNAtom =
      Atom(name: '_ListaTurmasObjetoBase.listafiltradaFN');

  @override
  List<dynamic> get listafiltradaFN {
    _$listafiltradaFNAtom.reportRead();
    return super.listafiltradaFN;
  }

  @override
  set listafiltradaFN(List<dynamic> value) {
    _$listafiltradaFNAtom.reportWrite(value, super.listafiltradaFN, () {
      super.listafiltradaFN = value;
    });
  }

  final _$listaFiltradaAtom =
      Atom(name: '_ListaTurmasObjetoBase.listaFiltrada');

  @override
  List<Turmas> get listaFiltrada {
    _$listaFiltradaAtom.reportRead();
    return super.listaFiltrada;
  }

  @override
  set listaFiltrada(List<Turmas> value) {
    _$listaFiltradaAtom.reportWrite(value, super.listaFiltrada, () {
      super.listaFiltrada = value;
    });
  }

  final _$bloqueiaAtom = Atom(name: '_ListaTurmasObjetoBase.bloqueia');

  @override
  bool get bloqueia {
    _$bloqueiaAtom.reportRead();
    return super.bloqueia;
  }

  @override
  set bloqueia(bool value) {
    _$bloqueiaAtom.reportWrite(value, super.bloqueia, () {
      super.bloqueia = value;
    });
  }

  final _$kidsAtom = Atom(name: '_ListaTurmasObjetoBase.kids');

  @override
  List<dynamic> get kids {
    _$kidsAtom.reportRead();
    return super.kids;
  }

  @override
  set kids(List<dynamic> value) {
    _$kidsAtom.reportWrite(value, super.kids, () {
      super.kids = value;
    });
  }

  final _$juniorsAtom = Atom(name: '_ListaTurmasObjetoBase.juniors');

  @override
  List<dynamic> get juniors {
    _$juniorsAtom.reportRead();
    return super.juniors;
  }

  @override
  set juniors(List<dynamic> value) {
    _$juniorsAtom.reportWrite(value, super.juniors, () {
      super.juniors = value;
    });
  }

  final _$seniorsAtom = Atom(name: '_ListaTurmasObjetoBase.seniors');

  @override
  List<dynamic> get seniors {
    _$seniorsAtom.reportRead();
    return super.seniors;
  }

  @override
  set seniors(List<dynamic> value) {
    _$seniorsAtom.reportWrite(value, super.seniors, () {
      super.seniors = value;
    });
  }

  final _$seniors2Atom = Atom(name: '_ListaTurmasObjetoBase.seniors2');

  @override
  List<dynamic> get seniors2 {
    _$seniors2Atom.reportRead();
    return super.seniors2;
  }

  @override
  set seniors2(List<dynamic> value) {
    _$seniors2Atom.reportWrite(value, super.seniors2, () {
      super.seniors2 = value;
    });
  }

  final _$_ListaTurmasObjetoBaseActionController =
      ActionController(name: '_ListaTurmasObjetoBase');

  @override
  String? SetFirstValueList(String nomeProfessor) {
    final _$actionInfo = _$_ListaTurmasObjetoBaseActionController.startAction(
        name: '_ListaTurmasObjetoBase.SetFirstValueList');
    try {
      return super.SetFirstValueList(nomeProfessor);
    } finally {
      _$_ListaTurmasObjetoBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  List<dynamic> filtrarLista(String nomeProfessor) {
    final _$actionInfo = _$_ListaTurmasObjetoBaseActionController.startAction(
        name: '_ListaTurmasObjetoBase.filtrarLista');
    try {
      return super.filtrarLista(nomeProfessor);
    } finally {
      _$_ListaTurmasObjetoBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void TiraPotntosTurma(String? turma, int setValor) {
    final _$actionInfo = _$_ListaTurmasObjetoBaseActionController.startAction(
        name: '_ListaTurmasObjetoBase.TiraPotntosTurma');
    try {
      return super.TiraPotntosTurma(turma, setValor);
    } finally {
      _$_ListaTurmasObjetoBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
ListaTurmasPontos: ${ListaTurmasPontos},
professores: ${professores},
primeiraTurma: ${primeiraTurma},
listafiltradaFN: ${listafiltradaFN},
listaFiltrada: ${listaFiltrada},
bloqueia: ${bloqueia},
kids: ${kids},
juniors: ${juniors},
seniors: ${seniors},
seniors2: ${seniors2}
    ''';
  }
}
