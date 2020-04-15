import 'package:flutter/material.dart';

class ListasPage extends StatefulWidget {
  @override
  _ListasPageState createState() =>  _ListasPageState();
}

class _ListasPageState extends State<ListasPage> {

  List<String> items = <String> [
    'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','Y','Z'
  ];

  bool _ordemReversa = false;

    @override
  Widget build(BuildContext context) {

    Iterable<Widget> listTiles = items.map((String item) => buildListTile(context, item));

    return Scaffold(
      appBar: AppBar(
        title: Text('Listas Page'),
        backgroundColor: Colors.red,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.sort_by_alpha),
            onPressed: () {
              setState(() {
                _ordemReversa = !_ordemReversa;
                items.sort((String a, String b) => _ordemReversa ? b.compareTo(a) : a.compareTo(b));
              });
            },
          ),
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
          )
        ],
      ),
      body: Scrollbar(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          children: listTiles.toList(),
        ),
      ),
    );
  }
}

Widget buildListTile(BuildContext context, String item) {
  Widget secondary = const Text(
      'Texto Secundario'
  );

  return MergeSemantics(
    child: ListTile(
      title: Text('Este item representa a letra $item.'),
      subtitle: secondary,
    ),
  );
}