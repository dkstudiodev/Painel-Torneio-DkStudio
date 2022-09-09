
import 'package:flutter/material.dart';

class CaixaAluno extends StatefulWidget {
  final String nome;
  final String casa;
  final String professor;
  final String turma;

  const CaixaAluno({

    Key? key,
    required this.nome,
    required this.casa,
    required this.professor,
    required this.turma
  }) : super(key: key);

  @override
  _CaixaAlunoState createState() => _CaixaAlunoState();
}

class _CaixaAlunoState extends State<CaixaAluno> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      actionsAlignment: MainAxisAlignment.spaceEvenly,
      title: Text(
        widget.nome,
        style: TextStyle(color: Colors.black),
      ),
      actions: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.casa,
              style: TextStyle(color: Colors.black),
            ),
            Text(
              widget.professor,
              style: TextStyle(color: Colors.black),
            ),
            Text(
              widget.turma,
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
        TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('Sair'))
      ],
    );
  }
}



