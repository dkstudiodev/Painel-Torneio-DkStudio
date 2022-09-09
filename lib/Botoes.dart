import 'package:back_end_torneio_dk/PagCasas.dart';
import 'package:back_end_torneio_dk/Telas/ControlePontos.dart';
import 'package:back_end_torneio_dk/Telas/PontosTurma.dart';
import 'package:back_end_torneio_dk/Widget/TelaCadastroAluno.dart';
import 'package:back_end_torneio_dk/dependecias/CadastraAluno.dart';
import 'package:back_end_torneio_dk/main.dart';
import 'package:flutter/material.dart';

import 'Telas/Relatorio.dart';

class Botoes extends StatelessWidget {
  const Botoes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.only(left: 26.0, right: 26),
        child: Center(
          child: Container(
            alignment: Alignment.center,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (builder) => TelaCadastroAluno()),
                        );
                      },
                      child: Text('Cadastrar')),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (builder) => PagCasas()),
                        );
                      },
                      child: Text('Lista')),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (builder) => Relatorio()),
                        );
                      },
                      child: Text('Relatorio')),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (builder) => ControlePontos(),
                        ),
                      );
                    },
                    child: Text('Pontos'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (builder) => PontosTurmas(),
                        ),
                      );
                    },
                    child: Text('Pontos Professores'),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
