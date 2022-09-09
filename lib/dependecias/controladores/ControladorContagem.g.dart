// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ControladorContagem.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ControladorContagem on _ControladorContagemBase, Store {
  final _$pontosGAtom = Atom(name: '_ControladorContagemBase.pontosG');

  @override
  int get pontosG {
    _$pontosGAtom.reportRead();
    return super.pontosG;
  }

  @override
  set pontosG(int value) {
    _$pontosGAtom.reportWrite(value, super.pontosG, () {
      super.pontosG = value;
    });
  }

  final _$pontosRAtom = Atom(name: '_ControladorContagemBase.pontosR');

  @override
  int get pontosR {
    _$pontosRAtom.reportRead();
    return super.pontosR;
  }

  @override
  set pontosR(int value) {
    _$pontosRAtom.reportWrite(value, super.pontosR, () {
      super.pontosR = value;
    });
  }

  final _$pontosHAtom = Atom(name: '_ControladorContagemBase.pontosH');

  @override
  int get pontosH {
    _$pontosHAtom.reportRead();
    return super.pontosH;
  }

  @override
  set pontosH(int value) {
    _$pontosHAtom.reportWrite(value, super.pontosH, () {
      super.pontosH = value;
    });
  }

  final _$pontosSAtom = Atom(name: '_ControladorContagemBase.pontosS');

  @override
  int get pontosS {
    _$pontosSAtom.reportRead();
    return super.pontosS;
  }

  @override
  set pontosS(int value) {
    _$pontosSAtom.reportWrite(value, super.pontosS, () {
      super.pontosS = value;
    });
  }

  final _$_ControladorContagemBaseActionController =
      ActionController(name: '_ControladorContagemBase');

  @override
  dynamic addPontosG() {
    final _$actionInfo = _$_ControladorContagemBaseActionController.startAction(
        name: '_ControladorContagemBase.addPontosG');
    try {
      return super.addPontosG();
    } finally {
      _$_ControladorContagemBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic removePontosG() {
    final _$actionInfo = _$_ControladorContagemBaseActionController.startAction(
        name: '_ControladorContagemBase.removePontosG');
    try {
      return super.removePontosG();
    } finally {
      _$_ControladorContagemBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void EnviarPontos(String casa, int pontosCasa, int pontosAdd) {
    final _$actionInfo = _$_ControladorContagemBaseActionController.startAction(
        name: '_ControladorContagemBase.EnviarPontos');
    try {
      return super.EnviarPontos(casa, pontosCasa, pontosAdd);
    } finally {
      _$_ControladorContagemBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic addPontosR() {
    final _$actionInfo = _$_ControladorContagemBaseActionController.startAction(
        name: '_ControladorContagemBase.addPontosR');
    try {
      return super.addPontosR();
    } finally {
      _$_ControladorContagemBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic removePontosR() {
    final _$actionInfo = _$_ControladorContagemBaseActionController.startAction(
        name: '_ControladorContagemBase.removePontosR');
    try {
      return super.removePontosR();
    } finally {
      _$_ControladorContagemBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic addPontosH() {
    final _$actionInfo = _$_ControladorContagemBaseActionController.startAction(
        name: '_ControladorContagemBase.addPontosH');
    try {
      return super.addPontosH();
    } finally {
      _$_ControladorContagemBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic removePontosH() {
    final _$actionInfo = _$_ControladorContagemBaseActionController.startAction(
        name: '_ControladorContagemBase.removePontosH');
    try {
      return super.removePontosH();
    } finally {
      _$_ControladorContagemBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic addPontosS() {
    final _$actionInfo = _$_ControladorContagemBaseActionController.startAction(
        name: '_ControladorContagemBase.addPontosS');
    try {
      return super.addPontosS();
    } finally {
      _$_ControladorContagemBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic removePontosS() {
    final _$actionInfo = _$_ControladorContagemBaseActionController.startAction(
        name: '_ControladorContagemBase.removePontosS');
    try {
      return super.removePontosS();
    } finally {
      _$_ControladorContagemBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
pontosG: ${pontosG},
pontosR: ${pontosR},
pontosH: ${pontosH},
pontosS: ${pontosS}
    ''';
  }
}
