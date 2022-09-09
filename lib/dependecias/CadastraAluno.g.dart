// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'CadastraAluno.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CadastraAluno on _CadastraAlunoBase, Store {
  final _$testeAtom = Atom(name: '_CadastraAlunoBase.teste');

  @override
  String? get teste {
    _$testeAtom.reportRead();
    return super.teste;
  }

  @override
  set teste(String? value) {
    _$testeAtom.reportWrite(value, super.teste, () {
      super.teste = value;
    });
  }

  final _$nomeControllerAtom = Atom(name: '_CadastraAlunoBase.nomeController');

  @override
  TextEditingController get nomeController {
    _$nomeControllerAtom.reportRead();
    return super.nomeController;
  }

  @override
  set nomeController(TextEditingController value) {
    _$nomeControllerAtom.reportWrite(value, super.nomeController, () {
      super.nomeController = value;
    });
  }

  final _$_CadastraAlunoBaseActionController =
      ActionController(name: '_CadastraAlunoBase');

  @override
  dynamic CadastrarAluno(Aluno aluno) {
    final _$actionInfo = _$_CadastraAlunoBaseActionController.startAction(
        name: '_CadastraAlunoBase.CadastrarAluno');
    try {
      return super.CadastrarAluno(aluno);
    } finally {
      _$_CadastraAlunoBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
teste: ${teste},
nomeController: ${nomeController}
    ''';
  }
}
