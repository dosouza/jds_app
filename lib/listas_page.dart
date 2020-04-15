import 'package:flutter/material.dart';

class ListasPage extends StatefulWidget {

  List<String> item = <String> [
    'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','Y','Z'
  ];

  @override
  _ListasPageState createState() =>  _ListasPageState();
}

class _ListasPageState extends State<ListasPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listas Page'),
        backgroundColor: Colors.red,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.sort_by_alpha),
            onPressed: () {},
          )
        ],
      ),
      body: Scrollbar(
        child: ListView(),
      ),
    );
  }
}
