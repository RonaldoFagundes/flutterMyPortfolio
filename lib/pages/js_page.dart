import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import '../models/launch_page.dart';

class JsPage extends StatefulWidget {
  @override
  _JsPageState createState() => _JsPageState();
}

class _JsPageState extends State<JsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Colors.cyan,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
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
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 40,
                    width: 400,
                    color: Colors.teal.shade900,
                    child: Text(
                      'Javascript',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.greenAccent,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Image.asset(
                    'assets/images/jsfinancial.JPG',
                    height: 300,
                    width: 400,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 50,
                    width: 250,
                    color: Colors.teal.shade900,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 15),
                          child: Text(
                            'Web-Convector',
                            //textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 22,
                              color: Colors.greenAccent,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            openWebConvector();
                          },
                          icon: Icon(
                            Ionicons.eye_sharp,
                            size: 30,
                            color: Colors.yellow,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Image.asset(
                    'assets/images/jstur.png',
                    height: 300,
                    width: 400,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 50,
                    width: 250,
                    color: Colors.teal.shade900,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 25),
                          child: Text(
                            'Web-Tur',
                            //textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 22,
                              color: Colors.greenAccent,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            openWebTur();
                          },
                          icon: Icon(
                            Ionicons.eye_sharp,
                            size: 30,
                            color: Colors.yellow,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Image.asset(
                    'assets/images/jsnutri.png',
                    height: 250,
                    width: 400,
                  ),
                  Container(
                    height: 50,
                    width: 250,
                    color: Colors.teal.shade900,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 25),
                          child: Text(
                            'Web-Nutri',
                            //textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 22,
                              color: Colors.greenAccent,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            openWebNutri();
                          },
                          icon: Icon(
                            Ionicons.eye_sharp,
                            size: 30,
                            color: Colors.yellow,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
