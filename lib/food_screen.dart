import 'package:app_medidas/calculos/calc_foods.dart';
import 'package:flutter/material.dart';

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
          "Embalagem (200g): R\$ ${calc_Duzentos_Gramas.toStringAsPrecision(3)}";

      Trezentos_Gramas =
          "Embalagem (300g): R\$ ${calc_Trezentos_Gramas.toStringAsPrecision(3)}";

      Quinhentos_Gramas =
          "Embalagem(500g): R\$ ${calc_Quinhentos_Gramas.toStringAsPrecision(3)}";

      Oitocentos_Gramas =
          "Embalagem(800g): R\$ ${calc_Oitocentos_Gramas.toStringAsPrecision(3)}";

      Um_Quilo = "Embalagem(1 Kg): R\$ ${calc_Um_Quilo.toStringAsPrecision(4)}";

      Dois_Quilos =
          "Embalagem(2 kg): R\$ ${calc_Dois_Quilos.toStringAsPrecision(4)}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
      child: Scaffold(
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
                      size: 70.0,
                      color: Colors.lightBlue,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: "Gramas (g)",
                        labelStyle: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 14.0,
                      ),
                      controller: weightController,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Insira a quantidade em gramas (grama)";
                        }
                      },
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: "Preço (R\$)",
                        labelStyle: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 14.0,
                      ),
                      controller: priceController,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Insira o Preço (R\$)";
                        }
                      },
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
                    Text(
                      _infoText,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.blue, fontSize: 18.0),
                    ),
                    Text(
                      duzentos_gramas,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.blue, fontSize: 18.0),
                    ),
                    Text(
                      Trezentos_Gramas,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.blue, fontSize: 18.0),
                    ),
                    Text(
                      Quinhentos_Gramas,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.blue, fontSize: 18.0),
                    ),
                    Text(
                      Oitocentos_Gramas,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.blue, fontSize: 18.0),
                    ),
                    Text(
                      Um_Quilo,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.blue, fontSize: 18.0),
                    ),
                    Text(
                      Dois_Quilos,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.blue, fontSize: 18.0),
                    ),
                  ],
                )),
          )),
    );
  }
}
