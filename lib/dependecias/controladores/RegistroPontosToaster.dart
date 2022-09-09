import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mobx/mobx.dart';

part 'RegistroPontosToaster.g.dart';

class RegistroPontosToaster = _RegistroPontosToasterBase
    with _$RegistroPontosToaster;

abstract class _RegistroPontosToasterBase with Store {


  @action
  setRegistroPontos(String professor, String casa, String turma, int pontos) {
    FirebaseFirestore db = FirebaseFirestore.instance;

    db.collection('registroPontos').doc('registros').set({
      'casa': casa,
      'professor': professor,
      'pontos': pontos,
      'turma': turma,
    });
  }
}
