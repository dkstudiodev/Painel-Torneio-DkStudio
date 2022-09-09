import 'package:back_end_torneio_dk/dependecias/CadastraAluno.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import '../dependecias/aluno.dart';
import '../dependecias/turmas/ListaTurmasObjeto.dart';
import '../main.dart';

class TelaCadastroAluno extends StatefulWidget {
  const TelaCadastroAluno({Key? key}) : super(key: key);

  @override
  _TelaCadastroAlunoState createState() => _TelaCadastroAlunoState();
}

TextEditingController _nomeController = TextEditingController();
String professorSelecionado = 'Marcella';

class _TelaCadastroAlunoState extends State<TelaCadastroAluno> {
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

  String turmaSelecionado = 'S/Q - Junior 14:00';
  String casaSelecionado = 'gryffindor';
  String? prof;

  @override
  Widget build(BuildContext context) {
    final _cadastroAluno = Provider.of<CadastraAluno>(context);
    final _controleListaTurmas = Provider.of<ListaTurmasObjeto>(context);

    prof = _controleListaTurmas.SetFirstValueList(professorSelecionado);

    var largura = MediaQuery.of(context).size.width;
    var altura = MediaQuery.of(context).size.height;

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
          ),
          backgroundColor: Colors.transparent,
          body: Center(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Observer(
                      builder: (_) => Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Container(
                              child: TextFormField(
                                controller: _cadastroAluno.nomeController,
                                decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                    borderSide: BorderSide(
                                      color: Colors.blueAccent,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                    borderSide: BorderSide(
                                      color: Colors.blueAccent,
                                    ),
                                  ),
                                  hintText: 'Nome Aluno',
                                ),
                              ),
                            ),
                          )),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
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
                          setState(() => professorSelecionado = item!);
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Observer(
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
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Observer(
                        builder: (_) => Container(
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(color: Colors.blueAccent)),
                              child: DropdownButton<String>(
                                  dropdownColor: Colors.grey,
                                  iconEnabledColor: Colors.blueAccent,
                                  value: casaSelecionado,
                                  items: casas
                                      .map((item) => DropdownMenuItem<String>(
                                          value: item, child: Text(item)))
                                      .toList(),
                                  onChanged: (item) {
                                    setState(() {
                                      casaSelecionado = item!;
                                    });
                                  }),
                            )),
                  ),
                  Observer(
                    builder: (_) => Container(
                      alignment: Alignment.center,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blueAccent,
                            ),
                            onPressed: () {
                              Aluno aluno = Aluno(
                                  turma: _controleListaTurmas.primeiraTurma,
                                  casa: casaSelecionado,
                                  nome: _cadastroAluno.nomeController.text,
                                  professor: professorSelecionado,
                                  pontos: 0);

                              _cadastroAluno.CadastrarAluno(aluno);
                              _cadastroAluno.nomeController.clear();
                            },
                            child: Text('Cadastrar'),
                          ),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (builder) => Home()),
                                );
                              },
                              child: Text('Voltar'))
                        ],
                      ),
                    ),
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
