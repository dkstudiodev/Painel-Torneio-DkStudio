import 'package:back_end_torneio_dk/dependecias/ContadorCasa.dart';
import 'package:back_end_torneio_dk/dependecias/RecuperaDados.dart';
import 'package:back_end_torneio_dk/dependecias/controladores/ControladorContagem.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Botoes.dart';
import 'dependecias/CadastraAluno.dart';
import 'dependecias/Gets/GetPontos.dart';
import 'dependecias/Listas/RecuperaAlunosSemFiltro.dart';
import 'dependecias/Listas/RecuperaCasas.dart';
import 'dependecias/controladores/ControladorPresenca.dart';
import 'dependecias/controladores/RegistroPontosToaster.dart';
import 'dependecias/turmas/ListaTurmasObjeto.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MultiProvider(
      providers: [
        Provider<CadastraAluno>(
          create: (_) => CadastraAluno(),
        ),
        Provider<RecuperaDados>(
          create: (_) => RecuperaDados(),
        ),
        Provider<ControladorPresenca>(
          create: (_) => ControladorPresenca(),
        ),
        Provider<RecuperaCasas>(
          create: (_) => RecuperaCasas(),
        ),
        Provider<RecuperaAlunosSemFiltro>(
          create: (_) => RecuperaAlunosSemFiltro(),
        ),
        Provider<ContadorCasa>(
          create: (_) => ContadorCasa(),
        ),
        Provider<ListaTurmasObjeto>(
          create: (_) => ListaTurmasObjeto(),
        ),
        Provider<ControladorContagem>(
          create: (_) => ControladorContagem(),
        ),
        Provider<GetPontosCasas>(
          create: (_) => GetPontosCasas(),
        ),
        Provider<ListaTurmasObjeto>(
          create: (_) => ListaTurmasObjeto(),
        ),
        Provider<RegistroPontosToaster>(
          create: (_) => RegistroPontosToaster(),
        ),
      ],
      child: Home(),
    ),
  );
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        hintColor: Colors.white54,
        primaryColor: Colors.white,
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: Colors.white,
              displayColor: Colors.white,
            ),
      ),
      debugShowCheckedModeBanner: false,
      home: Stack(
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
            body: Botoes(),
          )
        ],
      ),
    );
  }
}
