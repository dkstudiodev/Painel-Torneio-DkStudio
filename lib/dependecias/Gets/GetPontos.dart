import 'package:back_end_torneio_dk/Casas.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class GetPontosCasas{


  Future<int> recuperaPontos(String nomeCasa) async {
    FirebaseFirestore db = FirebaseFirestore.instance;

    DocumentSnapshot documentSnapshot = await db.collection('casas').doc(nomeCasa).get();

    var pontos = await documentSnapshot['pontos'];

    return pontos;

  }


}