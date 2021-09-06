import 'package:flutter/material.dart';

class LinkPage extends StatefulWidget {
  LinkPage({Key? key}) : super(key: key);

  @override
  _LinkPageState createState() => _LinkPageState();
}

class _LinkPageState extends State<LinkPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PageLink'),
      ),
    );
  }
}
