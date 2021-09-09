import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:ionicons/ionicons.dart';

import '../models/launch_page.dart';
import 'js_page.dart';
import 'html_page.dart';
import 'react_page.dart';
import 'info_page.dart';
import 'java_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> imageList = [
    "assets/images/soul.png",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/6/61/HTML5_logo_and_wordmark.svg/1200px-HTML5_logo_and_wordmark.svg.png",
    "https://miro.medium.com/max/280/1*xfJlmNB_-rAJAJzBNKanlQ.jpeg",
    "https://getbootstrap.com.br/docs/4.1/assets/img/bootstrap-stack.png",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Unofficial_JavaScript_logo_2.svg/1200px-Unofficial_JavaScript_logo_2.svg.png",
    "https://miro.medium.com/max/1024/1*xDi2csEAWxu95IEkaNdFUQ.png",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHCXqXXIyVcxTQzd7tNmmkVr-iGzVEztYt9WEhNPNZrtDpRwwmeBjwAJHYxv8bpZBO5u8&usqp=CAU",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meu Portfólio"),
        centerTitle: true,
        backgroundColor: Colors.indigo.shade600,
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.indigo.shade900,
          child: ListView(
            children: [
              Container(
                color: Colors.green,
                child: UserAccountsDrawerHeader(
                  accountName: Text("RonaldoFagundes"),
                  accountEmail: Text("rfagundes@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(80.0),
                      child: Image.asset('../assets/images/myself.jpg'),
                    ),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Ionicons.logo_html5,
                  size: 40,
                  color: Colors.amber,
                ),
                title: Text(
                  'Html',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HtmlPage(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: Icon(
                  Ionicons.logo_css3,
                  size: 40,
                  color: Colors.amber,
                ),
                title: Text(
                  'Css',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HtmlPage(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: Icon(
                  Ionicons.logo_javascript,
                  size: 40,
                  color: Colors.amber,
                ),
                title: Text(
                  'Js',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => JsPage(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: Icon(
                  Ionicons.logo_react,
                  size: 40,
                  color: Colors.amber,
                ),
                title: Text(
                  'React/Flutter',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ReactPage(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: Icon(
                  Ionicons.server,
                  size: 40,
                  color: Colors.amber,
                ),
                title: Text(
                  'Java/Mysql',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => JavaPage(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: Icon(
                  Ionicons.bicycle,
                  size: 40,
                  color: Colors.amber,
                ),
                title: Text(
                  'Objetivos',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => InfoPage(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            height: 700,
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/images/myself.jpg',
                    width: 220,
                    height: 120,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Text(
                    'Ronaldo Fagundes',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.cyanAccent.shade400,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Text(
                    'Desenvolvedor full-stack',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.cyanAccent.shade400,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    'Tecnologias em desenvolvimento',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.cyanAccent.shade400,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  width: 300,
                  height: 190,
                  color: Colors.blue.shade900,
                  child: CarouselSlider(
                    options: CarouselOptions(
                      enlargeCenterPage: true,
                      enableInfiniteScroll: false,
                      autoPlay: true,
                    ),
                    items: imageList
                        .map((e) => ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Stack(
                                fit: StackFit.expand,
                                children: <Widget>[
                                  Image.network(
                                    e,
                                    width: 250,
                                    height: 280,
                                    fit: BoxFit.contain,
                                  ),
                                ],
                              ),
                            ))
                        .toList(),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Text(
                        "Contatos:",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.cyanAccent.shade400,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 20),
                      child: Container(
                        child: IconButton(
                          onPressed: () {
                            openWhatsApp(
                                number: '+5521990288543', msg: 'Olá tudo bem?');
                          },
                          icon: Icon(
                            Ionicons.logo_whatsapp,
                            size: 40,
                            color: Colors.green,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 20),
                      child: Container(
                        child: IconButton(
                          onPressed: () {
                            openGitHub();
                          },
                          icon: Icon(
                            Ionicons.logo_github,
                            size: 40,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 20),
                      child: Container(
                        child: IconButton(
                          onPressed: () {
                            openLinkedin();
                          },
                          icon: Icon(
                            Ionicons.logo_linkedin,
                            size: 40,
                            color: Colors.blue.shade900,
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
      ),
    );
  }
}
