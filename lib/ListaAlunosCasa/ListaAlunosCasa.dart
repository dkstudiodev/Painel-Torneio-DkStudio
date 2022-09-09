import 'package:back_end_torneio_dk/dependecias/RecuperaDados.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import '../dependecias/aluno.dart';
import '../dependecias/controladores/ControladorPresenca.dart';

class ListaAlunosCasa extends StatefulWidget {
  const ListaAlunosCasa({Key? key}) : super(key: key);

  @override
  _ListaAlunosCasaState createState() => _ListaAlunosCasaState();
}

class _ListaAlunosCasaState extends State<ListaAlunosCasa> {
  @override
  Widget build(BuildContext context) {
    final _recuperaDados = Provider.of<RecuperaDados>(context);
    final _presenca = Provider.of<ControladorPresenca>(context);

    return Observer(
      builder: (_)=> FutureBuilder<List<Aluno>>(
        future: _recuperaDados.RecuperaDadosAlunos(),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
            case ConnectionState.waiting:
              return Center(
                child: Column(
                  children: [
                    Text(
                      'Carregando ranking2',
                    ),
                    CircularProgressIndicator(),
                  ],
                ),
              );
              break;
            case ConnectionState.active:
            case ConnectionState.done:
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, indice) {
                  List? listaAlunos = snapshot.data;
                  Aluno aluno = listaAlunos![indice];
                  bool presencaT = false;

                  return CheckboxListTile(
                    value: presencaT,
                    title: Text(
                      aluno.nome.toString(),
                      style: TextStyle(
                          fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(aluno.casa.toString()),
                    onChanged: (bool? value) {

                      setState(() {
                        presencaT = value!;
                      });

                      // _presenca.Presenca(value!);
                    },
                  );
                },
              );
              break;
          }
        }),
    );
  }
}
