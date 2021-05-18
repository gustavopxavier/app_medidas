import 'package:app_medidas/calculos/calc_foods.dart';
import 'package:app_medidas/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moneytextformfield/moneytextformfield.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void main() => runApp(FoodScreenMoney());

class FoodScreenMoney extends StatefulWidget {
  @override
  _FoodScreenMoneyState createState() => _FoodScreenMoneyState();
}

class _FoodScreenMoneyState extends State<FoodScreenMoney> {
  TextEditingController longCtrl = TextEditingController();
  TextEditingController compactCtrl = TextEditingController();

  String duzentos_gramas = "";
  String Trezentos_Gramas = "";
  String Quinhentos_Gramas = "";
  String Oitocentos_Gramas = "";
  String Um_Quilo = "";
  String Dois_Quilos = "";

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        ////////////////////Floating action button //////////////////
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.calculate),
          onPressed: () {
            print(longCtrl.text);
            print(compactCtrl.text);
            _calculate();
          },
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 40.0),
          child: ConstrainedBox(
            constraints: BoxConstraints(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                SizedBox(height: 30),
                _campoPeso(),
                _campoPreco(),
                _botaoCalcular(),
              ],
            ),
          ),
        ),
      ),
    );
  }

/////////////////////// WIDGETS ////////////////////////

  Widget _campoPeso() {
    TextStyle _ts = TextStyle(fontSize: 14.0);
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: TextFormField(
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          // icon: Icon(Icons.liquor),
          labelText: "Peso (g)",
          hintText: 'Digite o peso em gramas (g)',
          labelStyle: _ts,
          // border: _roundedInputDecoration(),
          // isDense: true,
        ),
        textAlign: TextAlign.right,
        style: _ts,
        controller: longCtrl,
        inputFormatters: <TextInputFormatter>[
          FilteringTextInputFormatter.digitsOnly
        ],
        validator: (value) {
          if (value.isEmpty) {
            return "Insira quantos mililitros (ml)";
          }
        },
      ),
    );
  }

////////////////// WIDGET CAMPO PREÇO ////////////
  Widget _campoPreco() {
    TextStyle _ts = TextStyle(fontSize: 14.0);
    Text _labelText =
        Text('Preço', style: TextStyle(fontWeight: FontWeight.bold));
    var _real = 'R\$';

    return MoneyTextFormField(
      settings: MoneyTextFormFieldSettings(
        controller: compactCtrl,
        moneyFormatSettings: MoneyFormatSettings(
            currencySymbol: _real,
            displayFormat: MoneyDisplayFormat.compactSymbolOnLeft),
        appearanceSettings: AppearanceSettings(
          padding: EdgeInsets.all(15.0),
          labelText: 'Preço',
          hintText: 'Digite o preço do produto (R\$)',
          labelStyle: _ts,
          inputStyle: _ts,
          formattedStyle: _ts.copyWith(color: Colors.blue),
        ),
      ),
    );
  }

///////////////////// CALCULATE //////////////////////
  void _calculate() {
    setState(
      () {
        print('Entrou no setstate');

        double weight = double.parse(longCtrl.text);
        double price = double.parse(compactCtrl.text);

        // double imc = weight / (price * price);

        /////////////// CALCULANDO PESOS /////////////////////

        double um_Grama = calcUmGrama(price, weight);

        double calc_Duzentos_Gramas = calcDuzentosGramas(um_Grama);

        double calc_Trezentos_Gramas = calcTrezentosGramas(um_Grama);

        double calc_Quinhentos_Gramas = calcQuinhentosGramas(um_Grama);

        double calc_Oitocentos_Gramas = calcOitocentosGramas(um_Grama);

        double calc_Um_Quilo = calcHumQuilo(um_Grama);

        double calc_Dois_Quilos = calcDoisQuilos(um_Grama);

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

        showAlertDialog(BuildContext context) {
          // set up the button
          // Widget okButton = FlatButton(
          //   child: Text("OK"),
          //   onPressed: () {},
          // );

          // set up the AlertDialog
          AlertDialog alert = AlertDialog(
            title: Text("Resultado:"),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            content: Text("$duzentos_gramas \n\n"
                "$Trezentos_Gramas \n\n"
                "$Quinhentos_Gramas \n\n"
                "$Oitocentos_Gramas \n\n"
                "$Um_Quilo \n\n"
                "$Dois_Quilos\n"),
            actions: [
              _botaoAlert(),
            ],
          );

          // show the dialog
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return alert;
            },
          );
        }

        showAlertDialog(context);
      },
    );
  }
/////////////////////////BOTÃO CALCULAR//////////////////////

  Widget _botaoCalcular() {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
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
            print('Clicou no botão calcular');
            _calculate();
            // if (_formKey.currentState.validate()) {
            //   _calculateImc();
            // }
          },
        ),
      ),
    );
  }

  Widget _botaoAlert() {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
      child: Container(
        height: 50.0,
        child: TextButton.icon(
          icon: Icon(
            Icons.calculate,
            size: 30,
          ),
          label: Text(
            'OK',
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
            print('Clicou no botão OK do alert');
            // Navigator.of(context).
            //TODO: Ajeitar botão do alert
            runApp(HomeScreen());

            // }
          },
        ),
      ),
    );
  }
}

/////////////////////////CONFIGURAÇÃO DE BORDAS//////////////

_roundedInputDecoration() {
  final _inputFieldHeight = 60.0;

  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(_inputFieldHeight * 0.5));
}

////////////////////// ALERT ////////////////////////////
// The easiest way for creating RFlutter Alert
_onBasicAlertPressed(context) {
  Alert(
    context: context,
    title: "RFLUTTER ALERT",
    desc: "Flutter is more awesome with RFlutter Alert.",
  ).show();
}
