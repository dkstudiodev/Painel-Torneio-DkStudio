import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'aluno.dart';
import 'package:mobx/mobx.dart';
part 'CadastraAluno.g.dart';

class CadastraAluno = _CadastraAlunoBase with _$CadastraAluno;

abstract class _CadastraAlunoBase with Store {

  @observable
  String? teste;

  @observable
  TextEditingController nomeController = TextEditingController();

  @action
  CadastrarAluno(Aluno aluno) {
    FirebaseFirestore db = FirebaseFirestore.instance;
    db.collection('alunos').doc(aluno.nome).set(aluno.topMap());
  }

}