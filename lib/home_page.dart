import 'package:flutter/material.dart';
import './servicos_page.dart';
import './botoes_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage>{
  String avatarPicture = 'https://avatars1.githubusercontent.com/u/27091463?s=460&u=2f003165e6aa5f31cc5875c6742499248d3ad554&v=4';
  String backgroundHeader = 'https://ak3.picdn.net/shutterstock/videos/20972563/thumb/1.jpg';
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Menu de Serviços", textAlign: TextAlign.center),
        backgroundColor: Colors.blue,
     ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
                accountName: new Text('Demetrius Souza'),
                accountEmail: new Text('demetrius@jdstecnologia.com.br'),
              currentAccountPicture: new GestureDetector(
                onTap: () => print('Toque na Imagem'),
                child: new CircleAvatar(
                  backgroundImage: new NetworkImage(avatarPicture),
                ),
              ),
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  fit: BoxFit.fill,
                  image: new NetworkImage(backgroundHeader),
                ),
              ),
            ),
            new ListTile(
              title: new Text("Impressão"),
              trailing: new Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new ServicosPage()));
              }
            ),
            new ListTile(
              title: new Text("Fotos"),
              trailing: new Icon(Icons.arrow_forward),
              onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new ServicosPage()));
              }
            ),
            new ListTile(
              title: new Text("Suporte Tecnico"),
              trailing: new Icon(Icons.arrow_forward),
              onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new ServicosPage()));
              }
            ),
            new ListTile(
              title: new Text("Botões"),
              trailing: new Icon(Icons.arrow_forward),
              onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new BotoesPage()));
              }
            ),
            new ListTile(
              title: new Text("Coworking"),
              trailing: new Icon(Icons.arrow_forward),
            ),
            new Divider(),
            new ListTile(
              title: new Text("Carrinho"),
              trailing: new Icon(Icons.arrow_forward),
            ),
            new Divider(),
            new ListTile(
              title: new Text("Sair"),
              trailing: new Icon(Icons.close),
              onTap: () {
                  Navigator.of(context).pop();
              }
            )
          ],
        )
      ),
      body: new Center(
        child: new Text("Tecnologia")
      )
    );
  }
}