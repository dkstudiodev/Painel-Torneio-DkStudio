import 'package:back_end_torneio_dk/dependecias/ContadorCasa.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Relatorio extends StatelessWidget {
  const Relatorio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void initState() {}
    final _contador = Provider.of<ContadorCasa>(context);

_contador.ExecutaRecuperaTodasCasas();
// _contador.RecuperaCasasSeniorsG();

    var largura = MediaQuery.of(context).size.width;

    return Container(
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
            backgroundColor: Colors.transparent,
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
            body: Container(
              width: largura,
              child: Column(
                children: [
                  Container(
                    child: Column(
                      children: [
                        Text('Kids',
                        style: TextStyle(
                          fontSize: 40,
                          fontFamily: 'HARRYP',
                        ),),
                        Row(
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                      height: 80,
                                      width: 80,
                                      child: Image.asset('assets/imgs/gryffindor.png')),
                                  Text(
                                    _contador.ListaKidsG.length.toString(),
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                      height: 80,
                                      width: 80,
                                      child: Image.asset('assets/imgs/ravenclaw.png')),
                                  Text(
                                    _contador.ListaKidsR.length.toString(),
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                      height: 80,
                                      width: 80,
                                      child: Image.asset('assets/imgs/hufflepuff.png')),
                                  Text(
                                    _contador.ListaKidsH.length.toString(),
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                      height: 80,
                                      width: 80,
                                      child: Image.asset('assets/imgs/slytherin.png')),
                                  Text(
                                    _contador.ListaKidsS.length.toString(),
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Text('Júniors',
                        style: TextStyle(
                          fontSize: 40,
                          fontFamily: 'HARRYP',
                        ),),
                        Row(
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                      height: 80,
                                      width: 80,
                                      child: Image.asset('assets/imgs/gryffindor.png')),
                                  Text(
                                    _contador.ListaJuniorsG.length.toString(),
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),

                            Container(
                              child: Row(
                                children: [
                                  Container(
                                      height: 80,
                                      width: 80,
                                      child: Image.asset('assets/imgs/ravenclaw.png')),
                                  Text(
                                    _contador.ListaJuniorsR.length.toString(),
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                      height: 80,
                                      width: 80,
                                      child: Image.asset('assets/imgs/hufflepuff.png')),
                                  Text(
                                    _contador.ListaJuniorsH.length.toString(),
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                      height: 80,
                                      width: 80,
                                      child: Image.asset('assets/imgs/slytherin.png')),
                                  Text(
                                    _contador.ListaJuniorsS.length.toString(),
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Text('Seniors',
                        style: TextStyle(
                          fontSize: 40,
                          fontFamily: 'HARRYP',
                        ),),
                        Row(
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                      height: 80,
                                      width: 80,
                                      child: Image.asset('assets/imgs/gryffindor.png')),
                                  Text(
                                    _contador.ListaSeniorsG.length.toString(),
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                      height: 80,
                                      width: 80,
                                      child: Image.asset('assets/imgs/ravenclaw.png')),
                                  Text(
                                    _contador.ListaSeniorsR.length.toString(),
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                      height: 80,
                                      width: 80,
                                      child: Image.asset('assets/imgs/hufflepuff.png')),
                                  Text(
                                    _contador.ListaSeniorsH.length.toString(),
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                      height: 80,
                                      width: 80,
                                      child: Image.asset('assets/imgs/slytherin.png')),
                                  Text(
                                    _contador.ListaSeniorsS.length.toString(),
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
