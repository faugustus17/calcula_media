import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  title: 'Média',
  home: Home(),
));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

Widget build(BuildContext context){
  AppBar appBar = AppBar(
    title: Text ("Verificação de Resultados"),
    centerTitle: true,
    backgroundColor: Colors.cyanAccent,
    actions: <Widget>[
      IconButton(
        icon: Icon(Icons.refresh),
        onPressed: () {},),
    ],
  );
  Scaffold scaffold = Scaffold(
    appBar: appBar,
  );
  return scaffold;
}
