import 'package:app_medidas/calculos/calc_foods.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodScreen extends StatefulWidget {
  @override
  _FoodScreenState createState() => _FoodScreenState();
}

class _FoodScreenState extends State<FoodScreen> {
  TextEditingController weightController = TextEditingController();
  TextEditingController priceController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String _infoText = "Informe os dados!";
  String duzentos_gramas = "";
  String Trezentos_Gramas = "";
  String Quinhentos_Gramas = "";
  String Oitocentos_Gramas = "";
  String Um_Quilo = "";
  String Dois_Quilos = "";

  void _resetFields() {
    weightController.text = "";
    priceController.text = "";
    setState(() {
      _infoText = "Informe os dados!";
      duzentos_gramas = "";
      Trezentos_Gramas = "";
      Quinhentos_Gramas = "";
      Oitocentos_Gramas = "";
      Um_Quilo = "";
      Dois_Quilos = "";
    });
  }

  void _calculateImc() {
    setState(() {
      double weight = double.parse(weightController.text);
      double price = double.parse(priceController.text);

/////////////// CALCULANDO PESOS /////////////////////

      double um_Grama = calcUmGrama(price, weight);

      double calc_Duzentos_Gramas = calcDuzentosGramas(um_Grama);

      double calc_Trezentos_Gramas = calcTrezentosGramas(um_Grama);

      double calc_Quinhentos_Gramas = calcQuinhentosGramas(um_Grama);

      double calc_Oitocentos_Gramas = calcOitocentosGramas(um_Grama);

      double calc_Um_Quilo = calcHumQuilo(um_Grama);

      double calc_Dois_Quilos = calcDoisQuilos(um_Grama);

////////////////// MOSTRAR RESULTADOS /////////////////////

      _infoText = "";

      duzentos_gramas =
          "Embalagem (200g): R\$ ${calc_Duzentos_Gramas.toStringAsFixed(2)}";

      Trezentos_Gramas =
          "Embalagem (300g): R\$ ${calc_Trezentos_Gramas.toStringAsFixed(2)}";

      Quinhentos_Gramas =
          "Embalagem(500g): R\$ ${calc_Quinhentos_Gramas.toStringAsFixed(2)}";

      Oitocentos_Gramas =
          "Embalagem(800g): R\$ ${calc_Oitocentos_Gramas.toStringAsFixed(2)}";

      Um_Quilo = "Embalagem(1 Kg): R\$ ${calc_Um_Quilo.toStringAsFixed(2)}";

      Dois_Quilos =
          "Embalagem(2 kg): R\$ ${calc_Dois_Quilos.toStringAsFixed(2)}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          actions: [
            IconButton(
                icon: Icon(Icons.refresh),
                color: Colors.lightBlue,
                onPressed: _resetFields)
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
                    Icons.food_bank,
                    size: 40.0,
                    color: Colors.lightBlue,
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      icon: Icon(Icons.local_grocery_store_sharp),
                      hintText: 'Digite o peso do produto (gramas)',
                      labelText: "Gramas (g)",
                      labelStyle: TextStyle(
                        color: Colors.blue,
                      ),
                      border: _roundedInputDecoration(),
                    ),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 12.0,
                    ),
                    controller: weightController,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Insira a quantidade em gramas (grama)';
                      }
                    },
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      icon: Icon(Icons.monetization_on_outlined),
                      hintText: 'Digite o preço do produto',
                      labelText: "Preço (R\$)",
                      labelStyle: TextStyle(
                        color: Colors.blue,
                      ),
                      border: _roundedInputDecoration(),
                    ),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 12.0,
                    ),
                    controller: priceController,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    validator: (value) {
                      if (value.isEmpty) {
                        return "Insira o Preço (R\$)";
                      }
                    },
                  ),
                  SizedBox(
                    height: 30.0,
                  ),

//////////////////////////// BOTÃO CALCULAR ////////////////////////
                  ///
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
                                          Text(duzentos_gramas),
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
                                          Text(Trezentos_Gramas),
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
                                          Text(Quinhentos_Gramas),
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
                                          Text(Oitocentos_Gramas),
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
                                          Text(Um_Quilo),
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
                                          Text(Dois_Quilos),
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
              )),
        ));
  }
}

_roundedInputDecoration() {
  final _inputFieldHeight = 60.0;
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(_inputFieldHeight * 0.5));
}
