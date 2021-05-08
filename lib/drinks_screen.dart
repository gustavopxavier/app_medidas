import 'package:flutter/material.dart';

class DrinksScreen extends StatefulWidget {
  @override
  _DrinksScreenState createState() => _DrinksScreenState();
}

class _DrinksScreenState extends State<DrinksScreen> {
  TextEditingController weightController = TextEditingController();
  TextEditingController priceController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String dois_Meia_Nove = "";
  String tres_Tres_Zero = "";
  String tres_Cinco_Zero = "";
  String quatro_Sete_Tres = "";
  String seis_Seis_Zero = "";
  String Hum_mil = "";

  void _resetFields() {
    weightController.text = "";
    priceController.text = "";
    setState(() {
      dois_Meia_Nove = "";
      tres_Tres_Zero = "";
      tres_Cinco_Zero = "";
      quatro_Sete_Tres = "";
      seis_Seis_Zero = "";
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
        double calc_dois_Meia_Nove = um_Ml * 269;
        double calc_tres_Tres_Zero = um_Ml * 330; // Garrafa de vidro 330ml
        double calc_tres_Cinco_Zero = um_Ml * 350; // tres_Cinco_Zero de 350ml
        double calc_quatro_Sete_Tres = um_Ml * 473; // Lata de 473ml
        double calc_seis_Seis_Zero = um_Ml * 600; // Garrafa de vidro 600ml
        double calc_Hum_mil = um_Ml * 1000; // Garrafa de um litro

        dois_Meia_Nove =
            "Produto (269ml): R\$ ${calc_dois_Meia_Nove.toStringAsPrecision(2)}";
        tres_Tres_Zero =
            "Produto (330ml): R\$ ${calc_tres_Tres_Zero.toStringAsPrecision(2)}";
        tres_Cinco_Zero =
            "Produto (350ml): R\$ ${calc_tres_Cinco_Zero.toStringAsPrecision(2)}";
        quatro_Sete_Tres =
            "Produto (473ml): R\$ ${calc_quatro_Sete_Tres.toStringAsPrecision(2)}";
        seis_Seis_Zero =
            "Produto (600ml): R\$ ${calc_seis_Seis_Zero.toStringAsPrecision(3)}";
        Hum_mil = "Produto (1l): R\$ ${calc_Hum_mil.toStringAsPrecision(3)}";

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
                    labelStyle: TextStyle(color: Colors.lightBlue)),
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
                    label: Text('Calcular'),
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
                                      Text(dois_Meia_Nove),
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
                                      Text(tres_Tres_Zero),
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
                                      Text(tres_Cinco_Zero),
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
                                      Text(quatro_Sete_Tres),
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
                                      Text(seis_Seis_Zero),
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
