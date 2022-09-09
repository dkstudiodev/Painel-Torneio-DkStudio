import 'package:back_end_torneio_dk/dependecias/aluno.dart';
import 'package:back_end_torneio_dk/tabs/ListaComFiltro.dart';
import 'package:back_end_torneio_dk/tabs/ListaSemFiltro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'Casas.dart';
import 'dependecias/Listas/RecuperaCasas.dart';

class PagCasas extends StatefulWidget {
  const PagCasas({Key? key}) : super(key: key);

  @override
  _PagCasasState createState() => _PagCasasState();
}

class _PagCasasState extends State<PagCasas> with TickerProviderStateMixin {
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
  String itemSelecionado = 'gryffindor';
  String professorSelecionado = 'Marcella';

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);

    final _recuperaDadosCasa = Provider.of<RecuperaCasas>(context);
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
          body: Column(
            children: [
              TabBar(
                labelColor: Colors.white,
                indicatorColor: Colors.blueAccent,
                controller: _tabController,
                tabs: [
                  Tab(text: 'Todos',),
                  Tab(text: 'Com Filtro',
                  )
                ],
              ),
              Container(
                height: 600,
                width: double.maxFinite,
                child: TabBarView(
                  controller: _tabController,
                    children: [
                      ListaSemFiltro(),
                      ListaFiltro()
                    ]),
              )
            ],
          ),
        ),
      ],
    );
  }
}
