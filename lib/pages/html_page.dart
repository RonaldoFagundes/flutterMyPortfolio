import 'package:flutter/material.dart';
//import 'package:url_launcher/url_launcher.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HtmlPage extends StatefulWidget {
  @override
  _HtmlPageState createState() => _HtmlPageState();
}

class Tecnologia {
  final String nome;
  final String url;
  final String picture;
  Tecnologia(this.nome, this.url, this.picture);
}

class _HtmlPageState extends State<HtmlPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Colors.indigo.shade600,
      ),
      body: SingleChildScrollView(
        child: Container(
          height: 900,
          width: 500,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.black,
                Colors.blue.shade900,
              ],
            ),
          ),
          child: Column(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height: 100,
                    width: 100,
                    child: Text(
                      "Projetos html / css ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.amber,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                child: CarouselSlider(
                    options: CarouselOptions(autoPlay: true),

                    // ignore: non_constant_identifier_names
                    items: tecnologia.map((Tecnologia Tecnologia) {
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Container(
                              height: 50,
                              child: Text(
                                Tecnologia.nome,
                                style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 50,
                            child: Text(
                              Tecnologia.url,
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.green,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                              // height: 100,
                              // width: 40,
                              child: Image.asset(
                            Tecnologia.picture,
                            width: 200,
                            height: 80,
                          )),
                        ],
                      );
                    }).toList()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

final tecnologia = <Tecnologia>[
  Tecnologia(
    "Iniciando com Html",
    "Atividade cinema 1ª pagina",
    "assets/images/html1.jpg",
  ),
  Tecnologia(
    "Html",
    "Atividade cinema 2ª pagina",
    "assets/images/html2.jpg",
  ),
  Tecnologia(
    "estilizando com Css",
    "Atividade flex",
    "assets/images/css1.png",
  ),
  Tecnologia(
    "Css",
    "Atividade grid",
    "assets/images/css2.png",
  ),
];


/*
              child: Center(

                child: CarouselSlider(
                    options: CarouselOptions(autoPlay: true),
                    // ignore: non_constant_identifier_names
                    items: tecnologia.map((Tecnologia Tecnologia) {
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Container(
                              height: 50,
                              child: Text(
                                Tecnologia.nome,
                                style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 50,
                            child: Text(
                              Tecnologia.url,
                              style: TextStyle(
                                fontSize: 24,
                                color: Colors.green,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                              height: 400,
                              width: 400,
                              child: Image.asset(
                                Tecnologia.picture,
                                height: 100,
                                width: 100,
                              ))
                        ],
                      );
                    }).toList()),
              ),
             */