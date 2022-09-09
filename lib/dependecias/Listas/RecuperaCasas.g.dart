// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'RecuperaCasas.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$RecuperaCasas on _RecuperaCasasBase, Store {
  final _$casaAtom = Atom(name: '_RecuperaCasasBase.casa');

  @override
  String? get casa {
    _$casaAtom.reportRead();
    return super.casa;
  }

  @override
  set casa(String? value) {
    _$casaAtom.reportWrite(value, super.casa, () {
      super.casa = value;
    });
  }

  final _$turmaAtom = Atom(name: '_RecuperaCasasBase.turma');

  @override
  String? get turma {
    _$turmaAtom.reportRead();
    return super.turma;
  }

  @override
  set turma(String? value) {
    _$turmaAtom.reportWrite(value, super.turma, () {
      super.turma = value;
    });
  }

  final _$itemSelecionadoAtom =
      Atom(name: '_RecuperaCasasBase.itemSelecionado');

  @override
  String get itemSelecionado {
    _$itemSelecionadoAtom.reportRead();
    return super.itemSelecionado;
  }

  @override
  set itemSelecionado(String value) {
    _$itemSelecionadoAtom.reportWrite(value, super.itemSelecionado, () {
      super.itemSelecionado = value;
    });
  }

  final _$itemTurmaSelecionadoAtom =
      Atom(name: '_RecuperaCasasBase.itemTurmaSelecionado');

  @override
  String get itemTurmaSelecionado {
    _$itemTurmaSelecionadoAtom.reportRead();
    return super.itemTurmaSelecionado;
  }

  @override
  set itemTurmaSelecionado(String value) {
    _$itemTurmaSelecionadoAtom.reportWrite(value, super.itemTurmaSelecionado,
        () {
      super.itemTurmaSelecionado = value;
    });
  }

  final _$professoresSelecionadoAtom =
      Atom(name: '_RecuperaCasasBase.professoresSelecionado');

  @override
  String get professoresSelecionado {
    _$professoresSelecionadoAtom.reportRead();
    return super.professoresSelecionado;
  }

  @override
  set professoresSelecionado(String value) {
    _$professoresSelecionadoAtom
        .reportWrite(value, super.professoresSelecionado, () {
      super.professoresSelecionado = value;
    });
  }

  final _$RecuperaCasasAsyncAction =
      AsyncAction('_RecuperaCasasBase.RecuperaCasas');

  @override
  Future<List<Aluno>> RecuperaCasas(
      String turmaSelecionada, String professorSelecionado) {
    return _$RecuperaCasasAsyncAction
        .run(() => super.RecuperaCasas(turmaSelecionada, professorSelecionado));
  }

  @override
  String toString() {
    return '''
casa: ${casa},
turma: ${turma},
itemSelecionado: ${itemSelecionado},
itemTurmaSelecionado: ${itemTurmaSelecionado},
professoresSelecionado: ${professoresSelecionado}
    ''';
  }
}
