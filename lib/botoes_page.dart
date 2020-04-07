import 'dart:ffi';

import 'package:flutter/material.dart';

class BotoesPage extends StatefulWidget {
  @override
  _BotoesPageState createState() => new _BotoesPageState();
}

class _BotoesPageState extends State<BotoesPage> {
  ShapeBorder _buttonShape;
  @override
  Widget build(BuildContext context) {
    final ButtonThemeData buttonTheme = ButtonTheme.of(context).copyWith(
      shape: _buttonShape
    );
    return new Scaffold(
      body: new DefaultTabController(
          length: 5,
          child: Scaffold(
            appBar: new AppBar(
              bottom: new TabBar(
                  tabs: [
                    new Tab(text: 'Raised'),
                    new Tab(text: 'Flat'),
                    new Tab(text: 'Outline'),
                    new Tab(text: 'Icon'),
                    new Tab(text: 'Action')
                  ]),
              title: new Text('Botões Page')
            ),
            body: new TabBarView(children: [
              new ButtonTheme.fromButtonThemeData(
                  data: buttonTheme,
                  child: buildRaiseButton('Raise Button adicionar dimensão a layout geralmente simples, E enfatisam funcoes em espaços ocupados ou amplos')
              ),
              new ButtonTheme.fromButtonThemeData(
                data: buttonTheme,
                child: buildFlatButton('Flat Buttom é um botão mais "clean". Recomendado para utilizar em barras de ferramentas e nas caixas de dialogos')
              ),
              new Text('Outline'),
              new Text('Icon'),
              new Text('Action')
            ])
          )
      ),
    );
  }
}

Widget buildRaiseButton(title) {
  return
      new Align(
        alignment: const Alignment(0.0, -0.2),
        child: new Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            new Text(title,
                      textAlign: TextAlign.center,
                      style: new TextStyle(fontWeight: FontWeight.bold),
            ),
            new ButtonBar(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                new RaisedButton(
                  child: const Text('Raised Button'),
                  onPressed: () {

                  },
                ),
                new RaisedButton(
                    child: const Text('Desabilitado'),
                    onPressed: () {

                    },
                )
              ],
            ),
            new ButtonBar(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                new RaisedButton.icon(
                    icon: const Icon(Icons.add, size: 18.0),
                    label: const Text('Raised Button'),
                  onPressed: null,
                ),
                new RaisedButton.icon(
                    icon: const Icon(Icons.add, size: 18.0),
                    label: const Text('Desabilitado'),
                  onPressed: null,
                )
              ],
            ),
          ],
        )
      );
}

Widget buildFlatButton(title) {
  return Align(
    alignment: const Alignment(0.0, -0.2),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text(title,
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold),
        ),
        ButtonBar(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            FlatButton(
              child: Text('Flat Button'),
              onPressed: () {

              },
            ),
            FlatButton(
              child: Text('Desabilitado'),
              onPressed: null,
            )
          ],
        ),
        ButtonBar(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            FlatButton.icon(
                icon: const Icon(Icons.add_circle_outline, size: 18.0,),
                label: Text('Flat Button'),
              onPressed: () {

              },
            ),
            FlatButton.icon(
              icon: const Icon(Icons.add_circle_outline, size: 18.0),
              label: Text('Desabilitado'),
              onPressed: null,
            )
          ],
        ),
    ],
    )
  );
}