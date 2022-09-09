import 'package:back_end_torneio_dk/dependecias/CadastraAluno.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import '../dependecias/aluno.dart';
import '../main.dart';

class TelaCadastroAluno extends StatefulWidget {
  const TelaCadastroAluno({Key? key}) : super(key: key);

  @override
  _TelaCadastroAlunoState createState() => _TelaCadastroAlunoState();
}

TextEditingController _nomeController = TextEditingController();

class _TelaCadastroAlunoState extends State<TelaCadastroAluno> {
  List<String> professores = [
    'Marcella',
    'italo',
    'Ruan',
    'Nagao',
    'Dener',
    'Lele',
    'Carol',
    'Gladson'
  ];
  List<String> turmas = ['S/Q - Jazz S 21:00','S/Q - K-pop 20:30','S/Q - Senior 20:00','S/Q - Junior 19:30','S/Q - Senior 19:00','S/Q - Juvenil 18:30', 'S/Q - Juvenil 18:00', 'S/Q - Junior 17:30','S/Q - JUvenil 17:30', 'S/Q - Kids 16:30', 'S/Q - Kids 16:00', 'S/Q - Junior 14:30', 'S/Q - Junior 14:00','T/Q - KIDS 1 17:00', 'T/Q - Junior 1 14:30', 'T/Q - Senior 20:30', 'T/Q - Juvenil 19:30',  'T/Q - Junior 2 18:30', 'T/Q - Junior 18:00', 'T/Q - Junior 17:30', 'T/Q - KIDS 17:00', 'T/Q - Jazz Junior 15:30', 'T/Q - Junior 16:30', 'T/Q - Jazz Kids 14:30', 'T/Q - Kids 10:00', 'T/Q - Kids 09:00', 'S - Junior 16:00', 'Sab - K-pop 14:00'];
  List<String> casas = ['gryffindor', 'hufflepuff', 'ravenclaw', 'slytherin'];

  String professorSelecionado = 'Marcella';
  String turmaSelecionado = 'S/Q - Junior 14:00';
  String casaSelecionado = 'gryffindor';

  @override
  Widget build(BuildContext context) {
    final _cadastroAluno = Provider.of<CadastraAluno>(context);
    var largura = MediaQuery.of(context).size.width;
    var altura = MediaQuery.of(context).size.height;

    return         Center(
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
                    border: Border.all(color: Colors.blueAccent)
                ),
                child: DropdownButton<String>(
                  dropdownColor: Colors.grey,
                  iconEnabledColor: Colors.blueAccent,
                  value: professorSelecionado,
                  items: professores
                      .map((item) => DropdownMenuItem<String>(
                      value: item, child: Text(item)))
                      .toList(),
                  onChanged: (item) =>
                      setState(() => professorSelecionado = item!),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.blueAccent)
                ),
                child: DropdownButton<String>(
                  dropdownColor: Colors.grey,
                  iconEnabledColor: Colors.blueAccent,
                  value: casaSelecionado,
                  items: casas
                      .map((item) => DropdownMenuItem<String>(
                      value: item, child: Text(item)))
                      .toList(),
                  onChanged: (item) => setState(() => casaSelecionado = item!),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.blueAccent)
                ),
                child: DropdownButton<String>(
                  dropdownColor: Colors.grey,
                  iconEnabledColor: Colors.blueAccent,
                  value: turmaSelecionado,
                  items: turmas
                      .map((item) => DropdownMenuItem<String>(
                      value: item, child: Text(item)))
                      .toList(),
                  onChanged: (item) => setState(() => turmaSelecionado = item!),
                ),
              ),
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
                              turma: turmaSelecionado,
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
                              MaterialPageRoute(builder: (builder) => Home()),
                            );
                          },
                          child: Text('Voltar'))

                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
