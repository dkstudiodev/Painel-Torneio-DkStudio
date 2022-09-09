import 'package:back_end_torneio_dk/Telas/ControlePontos.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import '../Widget/CaixaAluno.dart';
import '../dependecias/Listas/RecuperaCasas.dart';
import '../dependecias/aluno.dart';
import '../dependecias/turmas/ListaTurmasObjeto.dart';

class ListaFiltro extends StatefulWidget {
  const ListaFiltro({Key? key}) : super(key: key);

  @override
  _ListaFiltroState createState() => _ListaFiltroState();
}

String? prof;
var turmaFiltro;

class _ListaFiltroState extends State<ListaFiltro> {
  @override
  Widget build(BuildContext context) {
    final _recuperaDadosCasa = Provider.of<RecuperaCasas>(context);
    final _controleListaTurmas = Provider.of<ListaTurmasObjeto>(context);
    prof = _controleListaTurmas.SetFirstValueList(professorSelecionado);

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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.blueAccent)),
                  child: DropdownButton<String>(
                    dropdownColor: Colors.grey,
                    iconEnabledColor: Colors.blueAccent,
                    value: professorSelecionado,
                    items: professores
                        .map((item) => DropdownMenuItem<String>(
                            value: item, child: Text(item)))
                        .toList(),
                    onChanged: (item) {
                      setState(() {
                        professorSelecionado = item!;
                      });
                    },
                  ),
                ),
              ),
              Observer(
                  builder: (_) => Container(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Colors.blueAccent)),
                        child: DropdownButton<String>(
                            dropdownColor: Colors.grey,
                            iconEnabledColor: Colors.blueAccent,
                            value: _controleListaTurmas.primeiraTurma,
                            items: _controleListaTurmas
                                .filtrarLista(professorSelecionado)
                                .map((item) => DropdownMenuItem<String>(
                                    value: item.turma, child: Text(item.turma)))
                                .toList(),
                            onChanged: (item) {
                              _controleListaTurmas.primeiraTurma = item!;
                            }),
                      )),
              // ElevatedButton(
              //     onPressed: () {
              //       setState(() {
              //         _recuperaDadosCasa.RecuperaCasas(
              //             _controleListaTurmas.primeiraTurma,
              //             professorSelecionado);
              //       });
              //     },
              //     child: Text('Filtrar'))
            ],
          ),
          Observer(
              builder: (_) => Expanded(
                    child: SizedBox(
                      child: FutureBuilder<List<Aluno>>(
                          future: _recuperaDadosCasa.RecuperaCasas(
                              _controleListaTurmas.primeiraTurma, professorSelecionado),
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
                  )),
        ],
      ),
    );
  }
}
