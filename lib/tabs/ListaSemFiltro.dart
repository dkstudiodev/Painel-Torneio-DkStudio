import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import '../Widget/CaixaAluno.dart';
import '../dependecias/Listas/RecuperaAlunosSemFiltro.dart';
import '../dependecias/Listas/RecuperaCasas.dart';
import '../dependecias/aluno.dart';

class ListaSemFiltro extends StatefulWidget {
  const ListaSemFiltro({Key? key}) : super(key: key);

  @override
  _ListaSemFiltroState createState() => _ListaSemFiltroState();
}

class _ListaSemFiltroState extends State<ListaSemFiltro> {
  @override
  Widget build(BuildContext context) {
    final _recuperaDadosCasa = Provider.of<RecuperaAlunosSemFiltro>(context);
    List<String> professores = [
      'Marcella',
      'italo',
      'Ruan',
      'Nagao',
      'Dener',
      'Lele',
      'Carol',
      'Gladson',
    ];
    List<String> casas = ['gryffindor', 'hufflepuff', 'ravenclaw', 'slytherin'];

    return Padding(
      padding: const EdgeInsets.only(top: 18.0),
      child: Column(
        children: [
          Observer(
              builder: (_) => Expanded(
                    child: SizedBox(
                      child: Observer(
                        builder: (_) => FutureBuilder<List<Aluno>>(
                            future: _recuperaDadosCasa.RecuperaCasas(),
                            builder: (context, snapshot) {
                              switch (snapshot.connectionState) {
                                case ConnectionState.none:
                                case ConnectionState.waiting:
                                  return Center(
                                    child: Column(
                                      children: [
                                        Text(
                                          'Carregando lista',
                                        ),
                                        CircularProgressIndicator(),
                                      ],
                                    ),
                                  );
                                  break;
                                case ConnectionState.active:
                                case ConnectionState.done:
                                  return Container(
                                    color: Colors.black,
                                    child: ListView.builder(
                                      itemCount: snapshot.data?.length,
                                      itemBuilder: (context, indice) {
                                        List? listaCasas = snapshot.data;
                                        Aluno? aluno = listaCasas![indice];

                                        return GestureDetector(
                                          onTap: () {
                                            showDialog(
                                                context: context,
                                                builder: (BuildContext context) =>
                                                    CaixaAluno(
                                                        nome: aluno!.nome
                                                            .toString(),
                                                        professor: aluno!
                                                            .professor
                                                            .toString(),
                                                        casa: aluno!.casa
                                                            .toString(),
                                                        turma: aluno!.turma
                                                            .toString()));
                                            // print(aluno!.nome.toString() + aluno.casa.toString() + aluno.professor.toString());
                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.all(12.0),
                                            child: Container(
                                              height: 62,
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.grey, width: 2),
                                                color: Colors.transparent,
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.spaceEvenly,
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.all(16),
                                                    child:
                                                        Text(indice.toString()),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.all(16),
                                                    child: Text(
                                                        aluno!.nome.toString()),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 16.0),
                                                    child: Container(
                                                      child: Row(
                                                        children: [
                                                          Container(
                                                            height: 18,
                                                            width: 101,
                                                            child: Text(
                                                              aluno.casa
                                                                  .toString(),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  );
                                  break;
                              }
                            }),
                      ),
                    ),
                  )),
        ],
      ),
    );
  }
}
