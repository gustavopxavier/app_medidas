import 'package:app_medidas/calculos/calc_foods.dart';
import 'package:app_medidas/widgets/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:moneytextformfield/moneytextformfield.dart';

void main() => runApp(FoodScreenMoney());

class FoodScreenMoney extends StatefulWidget {
  @override
  _FoodScreenMoneyState createState() => _FoodScreenMoneyState();
}

class _FoodScreenMoneyState extends State<FoodScreenMoney> {
  TextEditingController longCtrl = TextEditingController();
  TextEditingController compactCtrl = TextEditingController();

  String duzentosGramas = "";
  String trezentosGramas = "";
  String quinhentosGramas = "";
  String oitocentosGramas = "";
  String umQuilo = "";
  String doisQuilos = "";

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: true,
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
    TextStyle _ts = TextStyle(
      fontSize: 14.0,
      color: colorScheme.primary,
    );
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
        //TODO: Realizar validação do campo

        // validator: (value) {
        //   if (value.isEmpty) {
        //     return "Insira quantos mililitros (ml)";
        //   }
        // },
      ),
    );
  }

////////////////// WIDGET CAMPO PREÇO ////////////
  Widget _campoPreco() {
    TextStyle _ts = TextStyle(
      fontSize: 14.0,
      color: colorScheme.primary,
    );
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
          formattedStyle: _ts.copyWith(color: colorScheme.primary),
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

        double umGrama = calcUmGrama(price, weight);

        double resultadoDuzentosGramas = calcDuzentosGramas(umGrama);

        double resultadoTrezentosGramas = calcTrezentosGramas(umGrama);

        double resultadoQuinhentosGramas = calcQuinhentosGramas(umGrama);

        double resultadoOitocentosGramas = calcOitocentosGramas(umGrama);

        double resultadoUmQuilo = calcHumQuilo(umGrama);

        double resultadoDoisQuilos = calcDoisQuilos(umGrama);

        duzentosGramas =
            "Embalagem (200g): R\$ ${resultadoDuzentosGramas.toStringAsFixed(2)}";

        trezentosGramas =
            "Embalagem (300g): R\$ ${resultadoTrezentosGramas.toStringAsFixed(2)}";

        quinhentosGramas =
            "Embalagem(500g): R\$ ${resultadoQuinhentosGramas.toStringAsFixed(2)}";

        oitocentosGramas =
            "Embalagem(800g): R\$ ${resultadoOitocentosGramas.toStringAsFixed(2)}";

        umQuilo = "Embalagem(1 Kg): R\$ ${resultadoUmQuilo.toStringAsFixed(2)}";

        doisQuilos =
            "Embalagem(2 kg): R\$ ${resultadoDoisQuilos.toStringAsFixed(2)}";

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
            content: Text("$duzentosGramas \n\n"
                "$trezentosGramas \n\n"
                "$quinhentosGramas \n\n"
                "$oitocentosGramas \n\n"
                "$umQuilo \n\n"
                "$doisQuilos\n"),
            // actions: [
            //   _botaoAlert(),
            // ],
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
          ),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              colorScheme.primary,
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

  // Widget _botaoAlert() {
  //   return Padding(
  //     padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
  //     child: Container(
  //       height: 50.0,
  //       child: TextButton.icon(
  //         icon: Icon(
  //           Icons.calculate,
  //           size: 30,
  //         ),
  //         label: Text(
  //           'OK',
  //           style: GoogleFonts.oswald(fontSize: 20.0),
  //         ),
  //         style: ButtonStyle(
  //           backgroundColor: MaterialStateProperty.all(
  //             Colors.lightBlue,
  //           ),
  //           foregroundColor: MaterialStateProperty.all(
  //             Colors.white,
  //           ),
  //         ),
  //         onPressed: () {
  //           print('Clicou no botão OK do alert');
  //           // Navigator.of(context).
  //           //TODO: Botão dos resultados desabilitado, porém ajeitar futuramente
  //           // runApp(HomeScreen());

  //           // }
  //         },
  //       ),
  //     ),
  //   );
  // }
}

/////////////////////////CONFIGURAÇÃO DE BORDAS//////////////

// _roundedInputDecoration() {
//   final _inputFieldHeight = 60.0;

//   return OutlineInputBorder(
//       borderRadius: BorderRadius.circular(_inputFieldHeight * 0.5));
// }

////////////////////// ALERT ////////////////////////////
// The easiest way for creating RFlutter Alert
// _onBasicAlertPressed(context) {
//   Alert(
//     context: context,
//     title: "RFLUTTER ALERT",
//     desc: "Flutter is more awesome with RFlutter Alert.",
//   ).show();
// }
