import 'package:flutter/material.dart';

class ServicosPage extends StatefulWidget {
  @override
  _ServicosPageState createState() =>  _ServicosPageState();
}

class _ServicosPageState extends State<ServicosPage> {
//  ShapeBorder _buttonShape;
  @override
  Widget build(BuildContext context) {
//    final ButtonThemeData buttonTheme = ButtonTheme.of(context).copyWith(
//      shape: _buttonShape
//    );
    return  Scaffold(
      appBar:  AppBar(
        title: new Text('Serviços'),
        backgroundColor: Colors.blue,
      ),
    );
  }
}

//Widget buildRaiseButtom(title) {
//  return
//      new Align(
//        alignment: const Alignment(0.0, -0.2),
//        child: new Column(
//          mainAxisSize: MainAxisSize.min,
//          children: <Widget>[
//            new Text(title,
//              textAlign: TextAlign.center,
//              style: new TextStyle(fontWeight: FontWeight.bold),
//            ),
//            new ButtonBar(
//              mainAxisSize: MainAxisSize.min,
//              children: <Widget>[
//                new RaisedButton(
//                  child: const Text('Download de Arquivo'),
//                  onPressed: () {
//
//                  }
//                ),
//              ],
//            ),
//          ],
//        )
//      )
//}