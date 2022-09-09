// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'RecuperaAlunosSemFiltro.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$RecuperaAlunosSemFiltro on _RecuperaAlunosSemFiltroBase, Store {
  final _$casaAtom = Atom(name: '_RecuperaAlunosSemFiltroBase.casa');

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

  final _$itemSelecionadoAtom =
      Atom(name: '_RecuperaAlunosSemFiltroBase.itemSelecionado');

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

  final _$professoresSelecionadoAtom =
      Atom(name: '_RecuperaAlunosSemFiltroBase.professoresSelecionado');

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
      AsyncAction('_RecuperaAlunosSemFiltroBase.RecuperaCasas');

  @override
  Future<List<Aluno>> RecuperaCasas() {
    return _$RecuperaCasasAsyncAction.run(() => super.RecuperaCasas());
  }

  @override
  String toString() {
    return '''
casa: ${casa},
itemSelecionado: ${itemSelecionado},
professoresSelecionado: ${professoresSelecionado}
    ''';
  }
}
