import 'package:back_end_torneio_dk/dependecias/turmas/ListaTurmasObjeto.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'aluno.dart';

class ContadorCasa {
  ListaTurmasObjeto lista = ListaTurmasObjeto();

  List<Aluno> ListaKidsG = [];
  List<Aluno> ListaKidsR = [];
  List<Aluno> ListaKidsH = [];
  List<Aluno> ListaKidsS = [];

  List<Aluno> ListaJuniorsG = [];
  List<Aluno> ListaJuniorsR = [];
  List<Aluno> ListaJuniorsH = [];
  List<Aluno> ListaJuniorsS = [];

  List<Aluno> ListaSeniorsG = [];
  List<Aluno> ListaSeniorsG2 = [];
  List<Aluno> ListaSeniorsR = [];
  List<Aluno> ListaSeniorsR2 = [];
  List<Aluno> ListaSeniorsH = [];
  List<Aluno> ListaSeniorsH2 = [];
  List<Aluno> ListaSeniorsS = [];
  List<Aluno> ListaSeniorsS2 = [];

  RecuperaCasasKidsG() async {
    FirebaseFirestore db = FirebaseFirestore.instance;

    //Recupera todos os usuarios
    QuerySnapshot querySnapshot = await db
        .collection('alunos')
        .where('casa', isEqualTo: 'gryffindor')
        .where('turma', whereIn: lista.kids)
    // .where('casa', isEqualTo:  'T/Q - KIDS 1 17:00')
        .get();

    //Lista para retornar
    ListaKidsG = [];
    for (DocumentSnapshot item in querySnapshot.docs) {
      dynamic dados = item.data();

      Aluno aluno = Aluno(
        pontos: dados['pontos'],
        professor: dados['professor'],
        casa: dados['casa'],
        nome: dados['nome'],
        turma: dados['turma'],
      );
      // listaUsuarioG.add(aluno);
      ListaKidsG.add(aluno);
    }
  }
  RecuperaCasasKidsR() async {
    FirebaseFirestore db = FirebaseFirestore.instance;

    //Recupera todos os usuarios
    QuerySnapshot querySnapshot = await db
        .collection('alunos')
        .where('casa', isEqualTo: 'ravenclaw')
        .where('turma', whereIn: lista.kids)
        .get();

    //Lista para retornar
    ListaKidsR = [];
    for (DocumentSnapshot item in querySnapshot.docs) {
      dynamic dados = item.data();

      Aluno aluno = Aluno(
        pontos: dados['pontos'],
        professor: dados['professor'],
        casa: dados['casa'],
        nome: dados['nome'],
        turma: dados['turma'],
      );
      // listaUsuarioG.add(aluno);
      ListaKidsR.add(aluno);
    }
  }
  RecuperaCasasKidsH() async {
    FirebaseFirestore db = FirebaseFirestore.instance;

    //Recupera todos os usuarios
    QuerySnapshot querySnapshot = await db
        .collection('alunos')
        .where('casa', isEqualTo: 'hufflepuff')
        .where('turma', whereIn: lista.kids)
        .get();

    //Lista para retornar
    ListaKidsH = [];
    for (DocumentSnapshot item in querySnapshot.docs) {
      dynamic dados = item.data();

      Aluno aluno = Aluno(
        pontos: dados['pontos'],
        professor: dados['professor'],
        casa: dados['casa'],
        nome: dados['nome'],
        turma: dados['turma'],
      );
      ListaKidsH.add(aluno);
    }
  }
  RecuperaCasasKidsS() async {
    FirebaseFirestore db = FirebaseFirestore.instance;

    //Recupera todos os usuarios
    QuerySnapshot querySnapshot = await db
        .collection('alunos')
        .where('casa', isEqualTo: 'slytherin')
        .where('turma', whereIn: lista.kids)
        .get();

    //Lista para retornar
    ListaKidsS = [];
    for (DocumentSnapshot item in querySnapshot.docs) {
      dynamic dados = item.data();

      Aluno aluno = Aluno(
        pontos: dados['pontos'],
        professor: dados['professor'],
        casa: dados['casa'],
        nome: dados['nome'],
        turma: dados['turma'],
      );
      // listaUsuarioG.add(aluno);
      ListaKidsS.add(aluno);
    }
  }

  RecuperaCasasJuniorsG() async {
    FirebaseFirestore db = FirebaseFirestore.instance;

    //Recupera todos os usuarios
    QuerySnapshot querySnapshot = await db
        .collection('alunos')
        .where('casa', isEqualTo: 'gryffindor')
        .where('turma', whereIn: lista.juniors)
        .get();

    //Lista para retornar
    ListaJuniorsG = [];
    for (DocumentSnapshot item in querySnapshot.docs) {
      dynamic dados = item.data();

      Aluno aluno = Aluno(
        pontos: dados['pontos'],
        professor: dados['professor'],
        casa: dados['casa'],
        nome: dados['nome'],
        turma: dados['turma'],
      );
      // listaUsuarioG.add(aluno);
      ListaJuniorsG.add(aluno);
    }
  }
  RecuperaCasasJuniorsR() async {
    FirebaseFirestore db = FirebaseFirestore.instance;

    //Recupera todos os usuarios
    QuerySnapshot querySnapshot = await db
        .collection('alunos')
        .where('casa', isEqualTo: 'ravenclaw')
        .where('turma', whereIn: lista.juniors)
        .get();

    //Lista para retornar
    ListaJuniorsR = [];
    for (DocumentSnapshot item in querySnapshot.docs) {
      dynamic dados = item.data();

      Aluno aluno = Aluno(
        pontos: dados['pontos'],
        professor: dados['professor'],
        casa: dados['casa'],
        nome: dados['nome'],
        turma: dados['turma'],
      );
      // listaUsuarioG.add(aluno);
      ListaJuniorsR.add(aluno);
    }
  }
  RecuperaCasasJuniorsH() async {
    FirebaseFirestore db = FirebaseFirestore.instance;

    //Recupera todos os usuarios
    QuerySnapshot querySnapshot = await db
        .collection('alunos')
        .where('casa', isEqualTo: 'hufflepuff')
        .where('turma', whereIn: lista.juniors)
        .get();

    //Lista para retornar
    ListaJuniorsH = [];
    for (DocumentSnapshot item in querySnapshot.docs) {
      dynamic dados = item.data();

      Aluno aluno = Aluno(
        pontos: dados['pontos'],
        professor: dados['professor'],
        casa: dados['casa'],
        nome: dados['nome'],
        turma: dados['turma'],
      );
      ListaJuniorsH.add(aluno);
    }
  }
  RecuperaCasasJuniorsS() async {
    FirebaseFirestore db = FirebaseFirestore.instance;

    //Recupera todos os usuarios
    QuerySnapshot querySnapshot = await db
        .collection('alunos')
        .where('casa', isEqualTo: 'slytherin')
        .where('turma', whereIn: lista.juniors)
        .get();

    //Lista para retornar
    ListaJuniorsS = [];
    for (DocumentSnapshot item in querySnapshot.docs) {
      dynamic dados = item.data();

      Aluno aluno = Aluno(
        pontos: dados['pontos'],
        professor: dados['professor'],
        casa: dados['casa'],
        nome: dados['nome'],
        turma: dados['turma'],
      );
      // listaUsuarioG.add(aluno);
      ListaJuniorsS.add(aluno);
    }
  }

  RecuperaCasasSeniorsG() async {
    FirebaseFirestore db = FirebaseFirestore.instance;


    //Recupera todos os usuarios
    QuerySnapshot querySnapshot = await db
        .collection('alunos')
        .where('casa', isEqualTo: 'gryffindor')
        .where('turma', whereIn: lista.seniors)
        .get();



    //Lista para retornar
    ListaSeniorsG = [];

    for (DocumentSnapshot item in querySnapshot.docs) {
      dynamic dados = item.data();

      Aluno aluno = Aluno(
        pontos: dados['pontos'],
        professor: dados['professor'],
        casa: dados['casa'],
        nome: dados['nome'],
        turma: dados['turma'],
      );


        ListaSeniorsG.add(aluno);
        // for(Aluno aluno in ListaSeniorsG){
        //   print(aluno.turma.toString() + aluno.casa.toString());
        // }

        // ListaSeniorsG.add(aluno2);
      }
    }
  RecuperaCasasSeniorsG2() async {
    FirebaseFirestore db = FirebaseFirestore.instance;


    //Recupera todos os usuarios
    QuerySnapshot querySnapshot = await db
        .collection('alunos')
        .where('casa', isEqualTo: 'gryffindor')
        .where('turma', whereIn: lista.seniors2)
        .get();



    //Lista para retornar
    ListaSeniorsG2 = [];

    for (DocumentSnapshot item in querySnapshot.docs) {
      dynamic dados = item.data();

      Aluno aluno = Aluno(
        pontos: dados['pontos'],
        professor: dados['professor'],
        casa: dados['casa'],
        nome: dados['nome'],
        turma: dados['turma'],
      );


        ListaSeniorsG.add(aluno);
        // ListaSeniorsG.add(aluno2);
      }
    }
  RecuperaCasasSeniorsR() async {
    FirebaseFirestore db = FirebaseFirestore.instance;


    //Recupera todos os usuarios
    QuerySnapshot querySnapshot = await db
        .collection('alunos')
        .where('casa', isEqualTo: 'ravenclaw')
        .where('turma', whereIn: lista.seniors)
        .get();



    //Lista para retornar
    ListaSeniorsR = [];

    for (DocumentSnapshot item in querySnapshot.docs) {
      dynamic dados = item.data();

      Aluno aluno = Aluno(
        pontos: dados['pontos'],
        professor: dados['professor'],
        casa: dados['casa'],
        nome: dados['nome'],
        turma: dados['turma'],
      );


        ListaSeniorsR.add(aluno);

        // ListaSeniorsG.add(aluno2);
      }
    }
  RecuperaCasasSeniorsR2() async {
    FirebaseFirestore db = FirebaseFirestore.instance;


    //Recupera todos os usuarios
    QuerySnapshot querySnapshot = await db
        .collection('alunos')
        .where('casa', isEqualTo: 'ravenclaw')
        .where('turma', whereIn: lista.seniors2)
        .get();



    //Lista para retornar
    ListaSeniorsR2 = [];

    for (DocumentSnapshot item in querySnapshot.docs) {
      dynamic dados = item.data();

      Aluno aluno = Aluno(
        pontos: dados['pontos'],
        professor: dados['professor'],
        casa: dados['casa'],
        nome: dados['nome'],
        turma: dados['turma'],
      );


        ListaSeniorsR2.add(aluno);
        // ListaSeniorsG.add(aluno2);
      }
    }
  RecuperaCasasSeniorsH() async {
    FirebaseFirestore db = FirebaseFirestore.instance;


    //Recupera todos os usuarios
    QuerySnapshot querySnapshot = await db
        .collection('alunos')
        .where('casa', isEqualTo: 'hufflepuff')
        .where('turma', whereIn: lista.seniors)
        .get();



    //Lista para retornar
    ListaSeniorsH = [];

    for (DocumentSnapshot item in querySnapshot.docs) {
      dynamic dados = item.data();

      Aluno aluno = Aluno(
        pontos: dados['pontos'],
        professor: dados['professor'],
        casa: dados['casa'],
        nome: dados['nome'],
        turma: dados['turma'],
      );


        ListaSeniorsH.add(aluno);
        // ListaSeniorsG.add(aluno2);
      }
    }
  RecuperaCasasSeniorsH2() async {
    FirebaseFirestore db = FirebaseFirestore.instance;


    //Recupera todos os usuarios
    QuerySnapshot querySnapshot = await db
        .collection('alunos')
        .where('casa', isEqualTo: 'hufflepuff')
        .where('turma', whereIn: lista.seniors2)
        .get();



    //Lista para retornar
    ListaSeniorsH2 = [];

    for (DocumentSnapshot item in querySnapshot.docs) {
      dynamic dados = item.data();

      Aluno aluno = Aluno(
        pontos: dados['pontos'],
        professor: dados['professor'],
        casa: dados['casa'],
        nome: dados['nome'],
        turma: dados['turma'],
      );


        ListaSeniorsH2.add(aluno);
        // ListaSeniorsG.add(aluno2);
      }
    }
  RecuperaCasasSeniorsS() async {
    FirebaseFirestore db = FirebaseFirestore.instance;


    //Recupera todos os usuarios
    QuerySnapshot querySnapshot = await db
        .collection('alunos')
        .where('casa', isEqualTo: 'slytherin')
        .where('turma', whereIn: lista.seniors)
        .get();



    //Lista para retornar
    ListaSeniorsS = [];

    for (DocumentSnapshot item in querySnapshot.docs) {
      dynamic dados = item.data();

      Aluno aluno = Aluno(
        pontos: dados['pontos'],
        professor: dados['professor'],
        casa: dados['casa'],
        nome: dados['nome'],
        turma: dados['turma'],
      );


        ListaSeniorsS.add(aluno);
        // ListaSeniorsG.add(aluno2);
      }
    }
  RecuperaCasasSeniorsS2() async {
    FirebaseFirestore db = FirebaseFirestore.instance;


    //Recupera todos os usuarios
    QuerySnapshot querySnapshot = await db
        .collection('alunos')
        .where('casa', isEqualTo: 'slytherin')
        .where('turma', whereIn: lista.seniors2)
        .get();



    //Lista para retornar
    ListaSeniorsS2 = [];

    for (DocumentSnapshot item in querySnapshot.docs) {
      dynamic dados = item.data();

      Aluno aluno = Aluno(
        pontos: dados['pontos'],
        professor: dados['professor'],
        casa: dados['casa'],
        nome: dados['nome'],
        turma: dados['turma'],
      );


        ListaSeniorsS2.add(aluno);
        // ListaSeniorsG.add(aluno2);
      }
    }

    void ExecutaRecuperaTodasCasas() {
      RecuperaCasasKidsG();
      RecuperaCasasKidsH();
      RecuperaCasasKidsR();
      RecuperaCasasKidsS();

      RecuperaCasasJuniorsG();
      RecuperaCasasJuniorsH();
      RecuperaCasasJuniorsR();
      RecuperaCasasJuniorsS();

      RecuperaCasasSeniorsG();
      RecuperaCasasSeniorsG2();
      RecuperaCasasSeniorsH();
      RecuperaCasasSeniorsH2();
      RecuperaCasasSeniorsR();
      RecuperaCasasSeniorsR2();
      RecuperaCasasSeniorsS();
      RecuperaCasasSeniorsS2();
    }
  }
