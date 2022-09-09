import 'package:back_end_torneio_dk/dependecias/turma.dart';
import 'package:back_end_torneio_dk/dependecias/turmas/ListaTurmasObjeto.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../dependecias/Turmas.dart';

class PontosTurmas extends StatefulWidget {
  const PontosTurmas({Key? key}) : super(key: key);

  @override
  _PontosTurmasState createState() => _PontosTurmasState();
}
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

var professorSelecionado = 'italo';

class _PontosTurmasState extends State<PontosTurmas> {
  @override
  Widget build(BuildContext context) {

    final _controleListaPontosTurmas = Provider.of<ListaTurmasObjeto>(context);

    var largura = MediaQuery.of(context).size.width;
    var altura = MediaQuery.of(context).size.height;
    return Container(
      height: altura,
      width: largura,
      child: Stack(
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
            body: Column(
              children: [
                Container(
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
                    onChanged: (item) {

                      setState(() => professorSelecionado = item!);
                    }
                    ,
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: _controleListaPontosTurmas.filtrarLista(professorSelecionado).length,
                    itemBuilder: (context, indice) {
                      Turmas turma =
                      _controleListaPontosTurmas.filtrarLista(professorSelecionado)[indice];

                      return Card(
                        color: Colors.white10,
                        child: ListTile(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          contentPadding: EdgeInsets.fromLTRB(16, 8, 16, 8),
                          leading: CircleAvatar(
                            maxRadius: 30,
                            backgroundColor: Colors.grey,
                            backgroundImage:
                            AssetImage('assets/imgs/${turma.professor}.png'),
                          ),
                          title: Text(
                            turma.turma,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            'pontos: ${turma.pontos.toString()}',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
