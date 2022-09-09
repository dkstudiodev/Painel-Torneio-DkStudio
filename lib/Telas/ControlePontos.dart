import 'package:back_end_torneio_dk/dependecias/turmas/ListaTurmasObjeto.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import '../Widget/WidgetContadorCasas.dart';

class ControlePontos extends StatefulWidget {
  const ControlePontos({Key? key}) : super(key: key);

  @override
  _ControlePontosState createState() => _ControlePontosState();
}

var turmaSelecionado = 'T/Q - Jazz Junior 15:30';
var professorSelecionado = 'italo';
String? prof;

class _ControlePontosState extends State<ControlePontos> {
  @override
  Widget build(BuildContext context) {
    final _controleListaTurmas = Provider.of<ListaTurmasObjeto>(context);


    prof = _controleListaTurmas.SetFirstValueList(professorSelecionado);

    List professores = [
      'Marcella',
      'italo',
      'Ruan',
      'Nagao',
      'Dener',
      'Lele',
      'Carol',
      'Gladson',
    ];

    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  colorFilter: ColorFilter.mode(
                      Colors.black.withAlpha(95), BlendMode.overlay),
                  image: AssetImage('assets/imgs/background.png'),
                  fit: BoxFit.cover)),
        ),
        Scaffold(
          appBar: AppBar(
            excludeHeaderSemantics: true,
            elevation: 0,
            foregroundColor: Colors.transparent,
            backgroundColor: Colors.transparent,
            flexibleSpace: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/imgs/logo_dk.png')),
              ),
            ),
            // title: Image.asset('assets/imgs/logo_dk.png',
            //   fit: BoxFit.cover,
          ),
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Observer(
              builder: (_) => Column(
                children: [
                  Container(
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
                        setState(() => professorSelecionado = item!);
                      },
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
                                        value: item.turma,
                                        child: Text(item.turma)))
                                    .toList(),
                                onChanged: (item) {
                                  _controleListaTurmas.primeiraTurma = item!;
                                }),
                          )),
                  WidgetContadorCasas(
                    casa: 'gryffindor',
                    turma: _controleListaTurmas.primeiraTurma,
                    professor: professorSelecionado,
                    pontos: _controleListaTurmas.bloqueia,
                  ),
                  WidgetContadorCasas(
                      casa: 'ravenclaw',
                      turma: _controleListaTurmas.primeiraTurma,
                      professor: professorSelecionado,
                      pontos: _controleListaTurmas.bloqueia),
                  WidgetContadorCasas(
                    casa: 'hufflepuff',
                    turma: _controleListaTurmas.primeiraTurma,
                    professor: professorSelecionado,
                    pontos: _controleListaTurmas.bloqueia,
                  ),
                  WidgetContadorCasas(
                    casa: 'slytherin',
                    turma: _controleListaTurmas.primeiraTurma,
                    professor: professorSelecionado,
                    pontos: _controleListaTurmas.bloqueia,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
