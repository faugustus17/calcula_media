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
  TextEditingController nomeController = TextEditingController();
  TextEditingController notaAController = TextEditingController();
  TextEditingController notaBController = TextEditingController();
  TextEditingController notaCController = TextEditingController();
  TextEditingController conceitoController = TextEditingController();

  void _resetFields(){
    nomeController.text = "";
    notaAController.text = "";
    notaBController.text = "";
    notaCController.text = "";
    conceitoController.text = "";
  }

  void _calcularConceito(){
    double notaA = double.parse(notaAController.text);
    double notaB = double.parse(notaBController.text);
    double notaC = double.parse(notaCController.text);
    double media = (notaA + notaB + notaC)/3;
    conceitoController.text = media.toStringAsFixed(2);
  }

  @override
  Widget build(BuildContext context) {
    AppBar appBar = AppBar(
      title: Text ("Verificação de Resultados"),
      centerTitle: true,
      backgroundColor: Colors.blueGrey,
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.refresh),
          onPressed: _resetFields,),
      ],
    );

    TextField txtFNome = TextField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(labelText: "Nome: "),
      textAlign: TextAlign.center,
      controller: nomeController,
    );
    TextField txtFNotaA = TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(labelText: "Nota A "),
      textAlign: TextAlign.center,
      controller: notaAController,
    );
    TextField txtFNotaB = TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(labelText: "Nota B "),
      textAlign: TextAlign.center,
      controller: notaBController,
    );
    TextField txtFNotaC = TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(labelText: "Nota C "),
      textAlign: TextAlign.center,
      controller: notaCController,
    );
    TextField txtFConceito = TextField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(labelText: "Conceito: "),
      textAlign: TextAlign.center,
      controller: conceitoController,
    );

    RaisedButton raisedButton = RaisedButton(
        onPressed: _calcularConceito,
        child: Text("Verificar"),
        textColor: Colors.white,
        color: Colors.black,
    );

    Container containerBtn = Container(
      height: 60.0,
      child: raisedButton,
    );

    Padding padding = Padding(
      padding: EdgeInsets.only(top: 20.0),
      child: containerBtn,
    );

    Column column = Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        txtFNome, txtFNotaA, txtFNotaB, txtFNotaC, txtFConceito,
        padding,
      ],
    );

    SingleChildScrollView singleChildScrollView = SingleChildScrollView(
      child: column,
      padding: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
    );

    Scaffold scaffold = Scaffold(
      appBar: appBar,
      backgroundColor: Colors.white,
      body: singleChildScrollView,
    );

    return scaffold;
  }
}