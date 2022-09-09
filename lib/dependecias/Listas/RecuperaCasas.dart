import 'package:back_end_torneio_dk/Casas.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../aluno.dart';

import 'package:mobx/mobx.dart';
part 'RecuperaCasas.g.dart';

class RecuperaCasas = _RecuperaCasasBase with _$RecuperaCasas;

abstract class _RecuperaCasasBase with Store {

  @observable
  String? casa;

  @observable
  String? turma;

  String? professor;

  @observable
  String itemSelecionado = 'gryffindor';

  @observable
  String itemTurmaSelecionado = 'S/Q - Jazz S 21:00';

  @observable
  String professoresSelecionado  = 'Ruan';

  @action
  Future<List<Aluno>> RecuperaCasas(String turmaSelecionada, String professorSelecionado) async {
    FirebaseFirestore db = FirebaseFirestore.instance;

    //Recupera todos os usuarios
    QuerySnapshot querySnapshot = await db
        .collection('alunos')
        .where('turma', isEqualTo: turmaSelecionada )
        .where('professor', isEqualTo: professorSelecionado )
        // .orderBy('casa' , descending: true)
        .get();

    //Lista para retornar
    List<Aluno> listaUsuario = [];

    for (DocumentSnapshot item in querySnapshot.docs) {
      dynamic dados = item.data();

      Aluno aluno = Aluno(
        pontos: dados['pontos'],
        professor: dados['professor'],
        casa: dados['casa'],
        nome: dados['nome'],
        turma: dados['turma'],
      );
      listaUsuario.add(aluno);

    }

    return listaUsuario;
  }
}
