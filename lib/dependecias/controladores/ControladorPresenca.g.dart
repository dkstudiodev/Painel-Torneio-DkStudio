// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ControladorPresenca.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ControladorPresenca on _ControladorPresencaBase, Store {
  final _$presencaAtom = Atom(name: '_ControladorPresencaBase.presenca');

  @override
  bool get presenca {
    _$presencaAtom.reportRead();
    return super.presenca;
  }

  @override
  set presenca(bool value) {
    _$presencaAtom.reportWrite(value, super.presenca, () {
      super.presenca = value;
    });
  }

  final _$_ControladorPresencaBaseActionController =
      ActionController(name: '_ControladorPresencaBase');

  @override
  dynamic Presenca(bool value) {
    final _$actionInfo = _$_ControladorPresencaBaseActionController.startAction(
        name: '_ControladorPresencaBase.Presenca');
    try {
      return super.Presenca(value);
    } finally {
      _$_ControladorPresencaBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
presenca: ${presenca}
    ''';
  }
}
