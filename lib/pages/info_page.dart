import 'package:flutter/material.dart';
import 'package:my_portfolio/main.dart';

class InfoPage extends StatefulWidget {
  @override
  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Colors.cyan,
      ),
      body: SingleChildScrollView(
        child: Container(
          //height: 900,
          width: 500,
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(28.0),
                child: Container(
                  height: 30,
                  width: 330,
                  child: Text(
                    "Objetivos",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.lightGreen.shade700,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(MyApp.themeNotifier.value == ThemeMode.light
                        ? Icons.dark_mode
                        : Icons.light_mode),
                    onPressed: () {
                      MyApp.themeNotifier.value =
                          MyApp.themeNotifier.value == ThemeMode.light
                              ? ThemeMode.dark
                              : ThemeMode.light;
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 300,
                      width: 190,
                      color: Colors.red.shade900,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Quero continuar estudando e adquerindo novos conhecimentos na área tecnológi-ca,aprendendo novas ferramentas e ...   ",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.yellow.shade700,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Image.asset(
                    'assets/images/study.png',
                    height: 400,
                    width: 200,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 600,
                    width: 200,
                    child: Image.asset(
                      'assets/images/work.png',
                      height: 500,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 300,
                      width: 190,
                      color: Colors.orange.shade900,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          " ...consequentem-ente conquistar uma vaga no mercado de trabalho e viver uma rotina profissional com equipes de devs criando soluções para um mundo melhor.    ",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.white70,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
