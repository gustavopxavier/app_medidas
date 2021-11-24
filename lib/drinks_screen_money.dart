import 'package:app_medidas/widgets/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:moneytextformfield/moneytextformfield.dart';

void main() => runApp(DrinksScreenMoney());

class DrinksScreenMoney extends StatefulWidget {
  @override
  _DrinksScreenMoneyState createState() => _DrinksScreenMoneyState();
}

class _DrinksScreenMoneyState extends State<DrinksScreenMoney> {
  TextEditingController longCtrl = TextEditingController();
  TextEditingController compactCtrl = TextEditingController();

  String doisMeiaNove = "";
  String tresTresZero = "";
  String tresCincoZero = "";
  String quatroSeteTres = "";
  String seisSeisZero = "";
  String humMil = "";

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            width: MediaQuery.of(context).size.width * .60,
            height: MediaQuery.of(context).size.height * .60,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                _campoMililitros(),
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

  Widget _campoMililitros() {
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
          labelText: "Mililitros (ml)",
          hintText: 'Digite a quantidade de mililitros (ml)',
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

        double umMl = price / weight;
        double resultadoDoisMeiaNove = umMl * 269;
        double resultadoTresTresZero = umMl * 330; // Garrafa de vidro 330ml
        double resultadoTresCincoZero = umMl * 350; // tresCincoZero de 350ml
        double resultadoQuatroSeteTres = umMl * 473; // Lata de 473ml
        double resultadoSeisSeisZero = umMl * 600; // Garrafa de vidro 600ml
        double resultadoHumMil = umMl * 1000; // Garrafa de um litro

        doisMeiaNove =
            "Produto (269ml): R\$ ${resultadoDoisMeiaNove.toStringAsFixed(2)}";
        tresTresZero =
            "Produto (330ml): R\$ ${resultadoTresTresZero.toStringAsFixed(2)}";
        tresCincoZero =
            "Produto (350ml): R\$ ${resultadoTresCincoZero.toStringAsFixed(2)}";
        quatroSeteTres =
            "Produto (473ml): R\$ ${resultadoQuatroSeteTres.toStringAsFixed(2)}";
        seisSeisZero =
            "Produto (600ml): R\$ ${resultadoSeisSeisZero.toStringAsFixed(2)}";
        humMil = "Produto (1l): R\$ ${resultadoHumMil.toStringAsFixed(2)}";

        _print() {
          print(doisMeiaNove);
          print(tresTresZero);
          print(tresCincoZero);
          print(quatroSeteTres);
          print(seisSeisZero);
          print(humMil);
        }

        // _onBasicAlertPressed(context);
        _print();

        showAlertDialog(BuildContext context) {
          // set up the button
          // Widget okButton = FlatButton(
          //   child: Text("OK"),
          //   onPressed: () {},
          // );

          // set up the AlertDialog
          AlertDialog alert = AlertDialog(
            title: Text("Resultado:"),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            content: Text("$doisMeiaNove \n\n"
                "$tresTresZero \n\n"
                "$tresCincoZero \n\n"
                "$quatroSeteTres \n\n"
                "$seisSeisZero \n\n"
                "$humMil\n"),
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
  //           runApp(HomeScreen());

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
