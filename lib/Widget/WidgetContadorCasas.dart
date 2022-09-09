import 'package:back_end_torneio_dk/dependecias/controladores/ControladorContagem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import '../dependecias/Gets/GetPontos.dart';
import '../dependecias/controladores/RegistroPontosToaster.dart';
import '../dependecias/turmas/ListaTurmasObjeto.dart';

class WidgetContadorCasas extends StatelessWidget {
  final bool pontos;
  final String casa;
  final String turma;
  final String professor;



  const WidgetContadorCasas(
      {Key? key, required this.casa, required this.turma, required this.professor, required this.pontos})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controleContagem = Provider.of<ControladorContagem>(context);
    final _controleGetPontosCasa = Provider.of<GetPontosCasas>(context);
    final _controleListaTurmas = Provider.of<ListaTurmasObjeto>(context);
    final _controleRegistroPontos = Provider.of<RegistroPontosToaster>(context);

    var largura = MediaQuery.of(context).size.width;
    String casa = this.casa;
    var pontosCasa;

    return Container(
      height: 300,
      width: largura,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Image.asset('assets/imgs/$casa.png'),
              FutureBuilder<int>(
                future: _controleGetPontosCasa.recuperaPontos(this.casa),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    pontosCasa = snapshot.data;
                    return Text(snapshot.data.toString());
                  } else if (snapshot.hasError)
                    return Text(snapshot.error.toString());
                  return CircularProgressIndicator();
                },
              ),
            ],
          ),
          Observer(
            builder: (_) => Column(
              children: [
                if (casa == 'gryffindor') ...[
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          _controleContagem.addPontosG();
                        },
                        icon: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        _controleContagem.pontosG.toString(),
                        style: TextStyle(fontSize: 16),
                      ),
                      IconButton(
                        onPressed: () {
                          _controleContagem.removePontosG();
                        },
                        icon: Icon(
                          Icons.remove,
                          color: Colors.white,
                        ),
                      ),
                      this.pontos == true
                          ? IconButton(
                              splashColor: Colors.blueAccent,
                              onPressed: () {
                                _controleRegistroPontos.setRegistroPontos(
                                    this.professor,
                                    this.casa,
                                    this.turma,
                                    _controleContagem.pontosG);
                                _controleContagem.EnviarPontos(this.casa,
                                    _controleContagem.pontosG, pontosCasa);
                                _controleListaTurmas.TiraPotntosTurma(
                                    this.turma, _controleContagem.pontosG);
                              },
                              icon: Icon(
                                Icons.send,
                                color: Colors.white,
                              ),
                            )
                          : IconButton(
                              splashColor: Colors.blueAccent,
                              onPressed: null,
                              icon: Icon(
                                Icons.send,
                                color: Colors.blueGrey,
                              ),
                            )
                    ],
                  )
                ] else if (casa == 'ravenclaw') ...[
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          _controleContagem.addPontosR();
                        },
                        icon: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        _controleContagem.pontosR.toString(),
                        style: TextStyle(fontSize: 16),
                      ),
                      IconButton(
                        onPressed: () {
                          _controleContagem.removePontosR();
                        },
                        icon: Icon(
                          Icons.remove,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        splashColor: Colors.blueAccent,
                        onPressed: () {
                          _controleRegistroPontos.setRegistroPontos(
                              this.professor,
                              this.casa,
                              this.turma,
                              _controleContagem.pontosR);
                          _controleContagem.EnviarPontos(
                              this.casa, _controleContagem.pontosR, pontosCasa);
                          _controleListaTurmas.TiraPotntosTurma(
                              this.turma, _controleContagem.pontosR);

                        },
                        icon: Icon(
                          Icons.send,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  )
                ] else if (casa == 'hufflepuff') ...[
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          _controleContagem.addPontosH();
                        },
                        icon: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        _controleContagem.pontosH.toString(),
                        style: TextStyle(fontSize: 16),
                      ),
                      IconButton(
                        onPressed: () {
                          _controleContagem.removePontosH();
                        },
                        icon: Icon(
                          Icons.remove,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        splashColor: Colors.blueAccent,
                        onPressed: () {
                          _controleRegistroPontos.setRegistroPontos(
                              this.professor,
                              this.casa,
                              this.turma,
                              _controleContagem.pontosH);
                          _controleContagem.EnviarPontos(
                              this.casa, _controleContagem.pontosH, pontosCasa);
                          _controleListaTurmas.TiraPotntosTurma(
                              this.turma, _controleContagem.pontosH);
                        },
                        icon: Icon(
                          Icons.send,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  )
                ] else if (casa == 'slytherin') ...[
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          _controleContagem.addPontosS();
                        },
                        icon: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        _controleContagem.pontosS.toString(),
                        style: TextStyle(fontSize: 16),
                      ),
                      IconButton(
                        onPressed: () {
                          _controleContagem.removePontosS();
                        },
                        icon: Icon(
                          Icons.remove,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        splashColor: Colors.blueAccent,
                        onPressed: () {
                          _controleRegistroPontos.setRegistroPontos(
                              this.professor,
                              this.casa,
                              this.turma,
                              _controleContagem.pontosS);
                          _controleContagem.EnviarPontos(
                              this.casa, _controleContagem.pontosS, pontosCasa);
                          _controleListaTurmas.TiraPotntosTurma(
                              this.turma, _controleContagem.pontosS);
                        },
                        icon: Icon(
                          Icons.send,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ]
              ],
            ),
          ),
        ],
      ),
    );
  }
}
