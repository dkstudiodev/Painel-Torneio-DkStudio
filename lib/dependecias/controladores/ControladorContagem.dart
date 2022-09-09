import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';

part 'ControladorContagem.g.dart';

class ControladorContagem = _ControladorContagemBase with _$ControladorContagem;

abstract class _ControladorContagemBase with Store {
  @observable
  // TextEditingController pontosG = TextEditingController();

  @observable
  int pontosG = 0;
  @observable
  int pontosR = 0;
  @observable
  int pontosH = 0;
  @observable
  int pontosS = 0;

  @action
  addPontosG() {
    pontosG++;
  }

  @action
  removePontosG() {
    pontosG--;
  }

  @action
  void EnviarPontos(String casa, int pontosCasa,int pontosAdd) {
    FirebaseFirestore db = FirebaseFirestore.instance;

    int soma = pontosCasa + pontosAdd;

    db.collection('casas').doc(casa).update({'pontos': soma});



  }

  @action
  addPontosR() {
    pontosR++;
  }

  @action
  removePontosR() {
    pontosR--;
  }

  @action
  addPontosH() {
    pontosH++;
  }

  @action
  removePontosH() {
    pontosH--;
  }

  @action
  addPontosS() {
    pontosS++;
  }

  @action
  removePontosS() {
    pontosS--;
  }
}
