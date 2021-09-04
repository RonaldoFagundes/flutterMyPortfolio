import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ReactPage extends StatefulWidget {
  ReactPage({Key? key}) : super(key: key);

  @override
  _ReactPageState createState() => _ReactPageState();
}

class Tecnologia {
  final String tecnologia;
  final String atv;
  final String picture;
  final String cod;
  Tecnologia(this.tecnologia, this.atv, this.picture, this.cod);
}

class _ReactPageState extends State<ReactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Colors.cyan,
      ),
      backgroundColor: Colors.indigo.shade600,
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            width: 500,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: CarouselSlider(
                  options: CarouselOptions(autoPlay: true, height: 900),

                  // ignore: non_constant_identifier_names
                  items: tecnologia.map((Tecnologia) {
                    return Column(
                      children: [
                        Container(
                          height: 30,
                          child: Text(
                            Tecnologia.tecnologia,
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.limeAccent.shade700,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 0),
                          child: Container(
                            height: 25,
                            child: Text(
                              Tecnologia.atv,
                              style: TextStyle(
                                fontSize: 22,
                                color: Colors.limeAccent.shade700,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 300,
                          width: 400,
                          child: Image.asset(Tecnologia.picture),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 300,
                            width: 400,
                            child: Image.asset(Tecnologia.cod),
                          ),
                        ),
                      ],
                    );
                  }).toList()),
            ),
          ),
        ),
      ),
    );
  }
}

final tecnologia = <Tecnologia>[
  Tecnologia(
    "React-Native",
    "Atividade Calculadora",
    "assets/images/calcReact.png",
    "assets/images/react.jpg",
  ),
  Tecnologia(
    "React-Native",
    "Atividade IMC",
    "assets/images/healthReact.png",
    "assets/images/react.jpg",
  ),
  Tecnologia(
    "React-Native",
    "Atividade IMC",
    "assets/images/healthReact2.png",
    "assets/images/react.jpg",
  ),
  Tecnologia(
    "React-Native",
    "Atividade IMC",
    "assets/images/healthReact3.png",
    "assets/images/react.jpg",
  ),
  Tecnologia(
    "React-Native",
    "Atividade appBanc",
    "assets/images/bancReact2.png",
    "assets/images/react.jpg",
  ),
  Tecnologia(
    "React-Native",
    "Atividade appBanc",
    "assets/images/bancReact1.png",
    "assets/images/react.jpg",
  ),
  Tecnologia(
    "React-Native",
    "Projeto Mercearia",
    "assets/images/merc.png",
    "assets/images/react.jpg",
  ),
  Tecnologia(
    "Flutter",
    "Atividade Cadastro",
    "assets/images/cadFlutter.png",
    "assets/images/flutter.jpg",
  ),
  Tecnologia(
    "Flutter",
    "Atividade Cadastro",
    "assets/images/cadFlutter2.png",
    "assets/images/flutter.jpg",
  ),
  Tecnologia(
    "Flutter",
    "Atividade Cadastro",
    "assets/images/cadFlutter3.png",
    "assets/images/flutter.jpg",
  ),
];
