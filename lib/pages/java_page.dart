import 'package:flutter/material.dart';

class JavaPage extends StatefulWidget {
  @override
  _JavaPageState createState() => _JavaPageState();
}

class _JavaPageState extends State<JavaPage> {
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
                    height: 30,
                    width: 400,
                    color: Colors.teal.shade900,
                    child: Text(
                      'Java/Mysql',
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
                    'assets/images/java1.jpg',
                    height: 300,
                    width: 400,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Image.asset(
                    'assets/images/java1.png',
                    height: 300,
                    width: 400,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Image.asset(
                    'assets/images/java2.jpg',
                    height: 300,
                    width: 400,
                  ),
                  Image.asset(
                    'assets/images/java2.png',
                    height: 300,
                    width: 400,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Image.asset(
                    'assets/images/mysql.jpg',
                    height: 250,
                    width: 400,
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
