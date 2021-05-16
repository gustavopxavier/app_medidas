import 'package:flutter/material.dart';
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
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.save),
          onPressed: () {
            print(longCtrl.text);
            print(compactCtrl.text);
            _calculate();
          },
        ),
        body: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(),
            child: Column(
              children: <Widget>[
                SizedBox(height: 30),
                _campoMililitros(),
                _campoPreco(),
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
      // inputFormatters: <TextInputFormatter>[
      //   FilteringTextInputFormatter.digitsOnly
      // ],
      validator: (value) {
        if (value.isEmpty) {
          return "Insira quantos mililitros (ml)";
        }
      },
    );
  }

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
}

/////////////////////////CONFIGURAÇÃO DE BORDAS
_roundedInputDecoration() {
  final _inputFieldHeight = 60.0;

  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(_inputFieldHeight * 0.5));
}
