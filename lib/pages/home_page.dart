import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:my_portfolio/pages/java_page.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'js_page.dart';
import 'html_page.dart';
import 'react_page.dart';
import 'info_page.dart';

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
                    //radius: 40,
                    backgroundColor: Colors.transparent,

                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(80.0),
                      child: Image.asset('../assets/images/myself.jpg'),
                    ),
                  ),
                ),
              ),
              ListTile(
                //leading: Icon(Icons.settings, color: Colors.green),
                leading: Icon(
                  MdiIcons.languageHtml5,
                  size: 40,
                  color: Colors.amber,
                ),

                title: Text(
                  'Html/Css',
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
                // leading: Icon(Icons.settings, color: Colors.green),
                leading: Icon(
                  MdiIcons.languageJavascript,
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
                  MdiIcons.react,
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
                  MdiIcons.languageJava,
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
                  MdiIcons.bikeFast,
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
                        decoration: BoxDecoration(
                            color: Colors.green,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                offset: const Offset(3.0, 3.0),
                                blurRadius: 5.0,
                                spreadRadius: 2.0,
                              ),
                            ]),
                        child: IconButton(
                          onPressed: () {
                            //   abrirWhatsApp();
                          },
                          icon: Icon(
                            Icons.phone,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    /*  Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 20),
                      child: Container(
                        height: 50,
                        width: 60,
                        color: Colors.amber,
                        child: IconButton(
                          onPressed: () {
                            //abrirWhatsApp();
                          },
                          icon: CircleAvatar(
                            backgroundColor: Colors.green,
                            child: Icon(
                              Icons.phone,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ), */
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 20),
                      child: Container(
                        decoration: BoxDecoration(
                            //color: Colors.grey,
                            //shape: BoxShape.circle,
                            boxShadow: [
                              /* BoxShadow(
                                offset: const Offset(3.0, 3.0),
                                blurRadius: 5.0,
                                spreadRadius: 2.0,
                              ), */
                            ]),
                        child: IconButton(
                          onPressed: () {
                            //  abrirGitHub();
                          },
                          icon: Icon(
                            MdiIcons.github,
                            size: 40,
                            color: Colors.amber,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 20),
                      child: Container(
                        decoration: BoxDecoration(
                            //color: Colors.grey,
                            //shape: BoxShape.circle,
                            boxShadow: [
                              /*  BoxShadow(
                                offset: const Offset(3.0, 3.0),
                                blurRadius: 5.0,
                                spreadRadius: 2.0,
                              ), */
                            ]),
                        child: IconButton(
                          onPressed: () {
                            //abrirLinkedin();
                          },
                          icon: Icon(
                            MdiIcons.linkedin,
                            size: 40,
                            color: Colors.amber,
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

/* abrirWhatsApp() async {
  var whatsappUrl = "whatsapp://send?phone=+5586994324465&text=Olá,tudo bem ?";

  if (await canLaunch(whatsappUrl)) {
    await launch(whatsappUrl);
  } else {
    throw 'Could not launch $whatsappUrl';
  }
} */

/* abrirGitHub() async {
  const url = 'https://flutterando.com.br/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
} */

/* abrirLinkedin() async {
  const url = 'https://flutterando.com.br/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
 */
/* class MyFlutterApp {
  MyFlutterApp._();
  
  static const _KFontFam = 'MyFlutterApp';
  static const String _KFontPkg = null;
  
  static const IconData home = IconData (0  
}; */



