import 'package:flutter/material.dart';

class DrinksScreen extends StatefulWidget {
  @override
  _DrinksScreenState createState() => _DrinksScreenState();
}

class _DrinksScreenState extends State<DrinksScreen> {
  TextEditingController weightController = TextEditingController();
  TextEditingController heightController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String _infoText = "Informe os dados!";
  String piriguete = "";
  String vidro_Pequena = "";
  String latinha = "";
  String lata_Media = "";
  String garrafa_Normal = "";
  String garrafa_Litrao = "";

  void _resetFields() {
    weightController.text = "";
    heightController.text = "";
    setState(() {
      _infoText = "Informe os dados!";
      piriguete = "";
      vidro_Pequena = "";
      latinha = "";
      lata_Media = "";
      garrafa_Normal = "";
      garrafa_Litrao = "";
    });
  }

  void _calculateImc() {
    setState(() {
      double weight = double.parse(weightController.text);
      double height = double.parse(heightController.text);

      // double imc = weight / (height * height);

      double um_Ml = height / weight;
      double calc_Piriguete = um_Ml * 269;
      double calc_Vidro_Pequena = um_Ml * 330; // Garrafa de vidro 330ml
      double calc_Latinha = um_Ml * 350; // Latinha de 350ml
      double calc_Lata_Media = um_Ml * 473; // Lata de 473ml
      double calc_Garrafa_Normal = um_Ml * 600; // Garrafa de vidro 600ml
      double calc_Garrafa_Litrao = um_Ml * 1000; // Garrafa de um litro

      _infoText = "";
      piriguete =
          "Garrafa (269ml): R\$ ${calc_Piriguete.toStringAsPrecision(3)}";
      vidro_Pequena =
          "Garrafa (330ml): R\$ ${calc_Vidro_Pequena.toStringAsPrecision(2)}";
      latinha = "Lata(350ml): R\$ ${calc_Latinha.toStringAsPrecision(2)}";
      lata_Media = "Lata(473ml): R\$ ${calc_Lata_Media.toStringAsPrecision(2)}";
      garrafa_Normal =
          "Garrafa(600ml): R\$ ${calc_Garrafa_Normal.toStringAsPrecision(2)}";
      garrafa_Litrao =
          "Garrafa(1l): R\$ ${calc_Garrafa_Litrao.toStringAsPrecision(2)}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(""),
          centerTitle: true,
          backgroundColor: Colors.white,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.refresh),
              onPressed: _resetFields,
            )
          ],
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
          child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Icon(
                    Icons.wine_bar,
                    size: 70.0,
                    color: Colors.lightBlue,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        labelText: "Mililitros (ml)",
                        labelStyle: TextStyle(color: Colors.lightBlue)),
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.lightBlue, fontSize: 14.0),
                    controller: weightController,
                    validator: (value) {
                      if (value.isEmpty) {
                        return "Insira quantos mililitros (ml)";
                      }
                    },
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        labelText: "Preço (R\$)",
                        labelStyle: TextStyle(color: Colors.lightBlue)),
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.lightBlue, fontSize: 14.0),
                    controller: heightController,
                    validator: (value) {
                      if (value.isEmpty) {
                        return "Insira o Preço (R\$)";
                      }
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                    child: Container(
                      height: 50.0,
                      child: RaisedButton(
                        onPressed: () {
                          if (_formKey.currentState.validate()) {
                            _calculateImc();
                          }
                        },
                        child: Text(
                          "Calcular",
                          style: TextStyle(color: Colors.white, fontSize: 25.0),
                        ),
                        color: Colors.lightBlue,
                      ),
                    ),
                  ),
                  Text(
                    _infoText,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.lightBlue, fontSize: 25.0),
                  ),
                  Text(
                    piriguete,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.lightBlue, fontSize: 25.0),
                  ),
                  Text(
                    vidro_Pequena,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.lightBlue, fontSize: 25.0),
                  ),
                  Text(
                    latinha,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.lightBlue, fontSize: 25.0),
                  ),
                  Text(
                    lata_Media,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.lightBlue, fontSize: 25.0),
                  ),
                  Text(
                    garrafa_Normal,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.lightBlue, fontSize: 25.0),
                  ),
                  Text(
                    garrafa_Litrao,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.lightBlue, fontSize: 25.0),
                  ),
                ],
              )),
        ));
  }
}
