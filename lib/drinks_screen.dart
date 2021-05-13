import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DrinksScreen extends StatefulWidget {
  @override
  _DrinksScreenState createState() => _DrinksScreenState();
}

class _DrinksScreenState extends State<DrinksScreen> {
  TextEditingController weightController = TextEditingController();
  TextEditingController priceController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String doisMeiaNove = "";
  String tresTresZero = "";
  String tresCincoZero = "";
  String quatroSeteTres = "";
  String seisSeisZero = "";
  String Hum_mil = "";

  void _resetFields() {
    weightController.text = "";
    priceController.text = "";
    setState(() {
      doisMeiaNove = "";
      tresTresZero = "";
      tresCincoZero = "";
      quatroSeteTres = "";
      seisSeisZero = "";
      Hum_mil = "";
    });
  }

  void _calculateImc() {
    setState(
      () {
        double weight = double.parse(weightController.text);
        double price = double.parse(priceController.text);

        // double imc = weight / (price * price);

        double um_Ml = price / weight;
        double calc_doisMeiaNove = um_Ml * 269;
        double calc_tresTresZero = um_Ml * 330; // Garrafa de vidro 330ml
        double calc_tresCincoZero = um_Ml * 350; // tresCincoZero de 350ml
        double calc_quatroSeteTres = um_Ml * 473; // Lata de 473ml
        double calc_seisSeisZero = um_Ml * 600; // Garrafa de vidro 600ml
        double calc_Hum_mil = um_Ml * 1000; // Garrafa de um litro

        doisMeiaNove =
            "Produto (269ml): R\$ ${calc_doisMeiaNove.toStringAsFixed(2)}";
        tresTresZero =
            "Produto (330ml): R\$ ${calc_tresTresZero.toStringAsFixed(2)}";
        tresCincoZero =
            "Produto (350ml): R\$ ${calc_tresCincoZero.toStringAsFixed(2)}";
        quatroSeteTres =
            "Produto (473ml): R\$ ${calc_quatroSeteTres.toStringAsFixed(2)}";
        seisSeisZero =
            "Produto (600ml): R\$ ${calc_seisSeisZero.toStringAsFixed(2)}";
        Hum_mil = "Produto (1l): R\$ ${calc_Hum_mil.toStringAsFixed(2)}";

        // teste();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text("teste"),
        centerTitle: true,
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.refresh),
            color: Colors.lightBlue,
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
                  labelStyle: TextStyle(color: Colors.lightBlue),
                ),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.lightBlue, fontSize: 12.0),
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
                  labelStyle: TextStyle(
                    color: Colors.lightBlue,
                  ),
                ),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.lightBlue, fontSize: 12.0),
                controller: priceController,
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
                  child: TextButton.icon(
                    icon: Icon(
                      Icons.calculate,
                      size: 30,
                    ),
                    label: Text(
                      'Calcular',
                      style: GoogleFonts.oswald(fontSize: 20.0),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Colors.lightBlue,
                      ),
                      foregroundColor: MaterialStateProperty.all(
                        Colors.white,
                      ),
                    ),
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        _calculateImc();
                      }
                    },
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                height: 220,
                width: double.maxFinite,
                child: ListView(
                  children: [
                    Card(
                      elevation: 0.0,
                      child: Padding(
                        padding: EdgeInsets.all(7),
                        child: Stack(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 10,
                                top: 5,
                              ),
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Text(doisMeiaNove),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Card(
                      elevation: 0.0,
                      child: Padding(
                        padding: EdgeInsets.all(7),
                        child: Stack(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 10,
                                top: 5,
                              ),
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Text(tresTresZero),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Card(
                      elevation: 0.0,
                      child: Padding(
                        padding: EdgeInsets.all(7),
                        child: Stack(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 10,
                                top: 5,
                              ),
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Text(tresCincoZero),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Card(
                      elevation: 0.0,
                      child: Padding(
                        padding: EdgeInsets.all(7),
                        child: Stack(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 10,
                                top: 5,
                              ),
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Text(quatroSeteTres),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Card(
                      elevation: 0.0,
                      child: Padding(
                        padding: EdgeInsets.all(7),
                        child: Stack(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 10,
                                top: 5,
                              ),
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Text(seisSeisZero),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Card(
                      elevation: 0.0,
                      child: Padding(
                        padding: EdgeInsets.all(7),
                        child: Stack(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 10,
                                top: 5,
                              ),
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Text(Hum_mil),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget teste() {
  return Align(
    alignment: Alignment.centerLeft,
    child: RichText(
      text: TextSpan(text: 'Testando card'),
    ),
  );
}
