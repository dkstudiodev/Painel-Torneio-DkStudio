import 'package:back_end_torneio_dk/Casas.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../aluno.dart';

import 'package:mobx/mobx.dart';
part 'RecuperaAlunosSemFiltro.g.dart';

class RecuperaAlunosSemFiltro = _RecuperaAlunosSemFiltroBase with _$RecuperaAlunosSemFiltro;

abstract class _RecuperaAlunosSemFiltroBase with Store {

  @observable
  String? casa;
  String? professor;

  @observable
  String itemSelecionado = 'gryffindor';

  @observable
  String professoresSelecionado  = 'Ruan';

  @action
  Future<List<Aluno>> RecuperaCasas() async {
    FirebaseFirestore db = FirebaseFirestore.instance;

    //Recupera todos os usuarios
    QuerySnapshot querySnapshot = await db
        .collection('alunos')
        // .where('casa', isEqualTo: casa )
        // .where('professor', isEqualTo: professoresSelecionado )
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
