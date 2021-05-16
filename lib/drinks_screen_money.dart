import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
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
  String Hum_mil = "";

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('MoneyTextFormField Demo'),
        ),
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
    return TextFormField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        icon: Icon(Icons.liquor),
        hintText: 'Digite a quantidade de ml',
        labelText: "Mililitros (ml)",
        labelStyle: TextStyle(
            // color: Colors.lightBlue,
            ),
        border: _roundedInputDecoration(),
        isDense: true,
      ),
      textAlign: TextAlign.center,
      style: TextStyle(
        // color: Colors.lightBlue,
        fontSize: 10.0,
        // fontWeight: FontWeight.bold,
      ),
      controller: longCtrl,
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.digitsOnly
      ],
      validator: (value) {
        if (value.isEmpty) {
          return "Insira quantos mililitros (ml)";
        }
      },
    );
  }

////////////////// WIDGET CAMPO PREÇO ////////////
  Widget _campoPreco() {
    TextStyle _ts = TextStyle(fontSize: 26.0);
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
          inputStyle: _ts.copyWith(color: Colors.orange),
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

        _print() {
          print(doisMeiaNove);
          print(tresTresZero);
          print(tresCincoZero);
          print(quatroSeteTres);
          print(seisSeisZero);
          print(Hum_mil);
        }

        _print();
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
}

/////////////////////////CONFIGURAÇÃO DE BORDAS//////////////

_roundedInputDecoration() {
  final _inputFieldHeight = 60.0;

  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(_inputFieldHeight * 0.5));
}
