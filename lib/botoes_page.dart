import 'dart:ffi';

import 'package:flutter/material.dart';

class BotoesPage extends StatefulWidget {
  @override
  _BotoesPageState createState() =>  _BotoesPageState();
}

class _BotoesPageState extends State<BotoesPage> {
  ShapeBorder _buttonShape;
  @override
  Widget build(BuildContext context) {
    final ButtonThemeData buttonTheme = ButtonTheme.of(context).copyWith(
      shape: _buttonShape
    );
    return Scaffold(
      body: DefaultTabController(
          length: 5,
          child: Scaffold(
            appBar:  AppBar(
              bottom:  TabBar(
                  tabs: [
                     Tab(text: 'Raised'),
                     Tab(text: 'Flat'),
                     Tab(text: 'Outline'),
                     Tab(text: 'Icon'),
                     Tab(text: 'Action')
                  ]),
              title:  Text('Botões Page')
            ),
            body:  TabBarView(children: [
               ButtonTheme.fromButtonThemeData(
                  data: buttonTheme,
                  child: buildRaiseButton('Raise Button adicionar dimensão a layout geralmente simples, E enfatisam funcoes em espaços ocupados ou amplos')
              ),
               ButtonTheme.fromButtonThemeData(
                data: buttonTheme,
                child: buildFlatButton('Flat Buttom é um botão mais "clean". Recomendado para utilizar em barras de ferramentas e nas caixas de dialogos')
              ),
              ButtonTheme.fromButtonThemeData(
                  data: buttonTheme,
                  child: buildOutlineButton('Outline são opacos e elevam-se quando pressionados')
              ),
               Text('Icon'),
               Text('Action')
            ])
          )
      ),
    );
  }
}

Widget buildRaiseButton(title) {
  return
       Align(
        alignment: const Alignment(0.0, -0.2),
        child:  Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
             Text(title,
                      textAlign: TextAlign.center,
                      style:  TextStyle(fontWeight: FontWeight.bold),
            ),
             ButtonBar(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                 RaisedButton(
                  child: const Text('Raised Button'),
                  onPressed: () {},
                ),
                 RaisedButton(
                    child: const Text('Desabilitado'),
                )
              ],
            ),
             ButtonBar(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                 RaisedButton.icon(
                    icon: const Icon(Icons.add, size: 18.0),
                    label: const Text('Raised Button'),
                  onPressed: () {},
                ),
                 RaisedButton.icon(
                    icon: const Icon(Icons.add, size: 18.0),
                    label: const Text('Desabilitado'),
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
              onPressed: () {},
            ),
            FlatButton(
              child: Text('Desabilitado'),
            )
          ],
        ),
        ButtonBar(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            FlatButton.icon(
                icon: const Icon(Icons.add_circle_outline, size: 18.0,),
                label: Text('Flat Button'),
              onPressed: () {},
            ),
            FlatButton.icon(
              icon: const Icon(Icons.add_circle_outline, size: 18.0),
              label: Text('Desabilitado'),
            )
          ],
        ),
    ],
    )
  );
}

Widget buildOutlineButton(title) {
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
              OutlineButton(
                child: Text('Outline Button'),
                onPressed: () {},
              ),
              OutlineButton(
                child: Text('Desabilitado'),
              )
            ],
          ),
          ButtonBar(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              OutlineButton.icon(
                icon: const Icon(Icons.add_circle_outline, size: 18.0,),
                label: Text('Outline Button'),
                onPressed: () {},
              ),
              OutlineButton.icon(
                icon: const Icon(Icons.add_circle_outline, size: 18.0),
                label: Text('Desabilitado'),
              )
            ],
          ),
        ],
      )
  );
}