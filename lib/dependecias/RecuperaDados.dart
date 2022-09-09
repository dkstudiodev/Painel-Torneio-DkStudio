import 'package:cloud_firestore/cloud_firestore.dart';

import 'aluno.dart';

class RecuperaDados {
  String? nome;

  Future<List<Aluno>> RecuperaDadosAlunos() async {

    FirebaseFirestore db = FirebaseFirestore.instance;

    QuerySnapshot querySnapshot = await db.collection('alunos').get();

    List<Aluno> listAlunos = [];

    for (DocumentSnapshot item in querySnapshot.docs) {
      dynamic dados = item.data();

      Aluno aluno = Aluno(
        professor: dados['professor'],
        nome: dados['nome'],
        casa: dados['casa'],
        turma: dados['turma'],
        pontos: dados['pontos'],
      );
      listAlunos.add(aluno);
    }
    return listAlunos;
  }
}
