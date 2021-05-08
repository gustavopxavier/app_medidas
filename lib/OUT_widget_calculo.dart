import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String alcool, gasolina;

  GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  TextEditingController gasolinaController = TextEditingController();
  TextEditingController alcoolController = TextEditingController();

  String _infoText = "Informe o valor de cada combustível";

  void _resetFields() {
    gasolinaController.text = "";
    alcoolController.text = "";
    setState(() {
      _infoText = "Informe o valor de cada combustível";
      _formkey = GlobalKey<FormState>();
    });
  }

  void calcula() {
    setState(() {
      double gasolina = double.parse(gasolinaController.text);
      double alcool = double.parse(alcoolController.text);
      double resultado = (alcool / gasolina);

      if (resultado > 0.70) {
        _infoText =
            "Percentual : (${resultado.toStringAsPrecision(3)})\n\nVale a pena abastecer com Gasolina";
      } else {
        _infoText =
            "Percentual : (${resultado.toStringAsPrecision(3)})\n\nVale a pena abastecer com Álcool";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gasolina ou Alcool ?"),
        centerTitle: true,
        backgroundColor: Colors.orange,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.refresh), onPressed: _resetFields)
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(25.0, 0.0, 25.0, 0.0),
        child: Form(
          key: _formkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Icon(Icons.directions_car, size: 60.0, color: Colors.deepOrange),
              buildTextFormFieldGasolina(),
              buildTextFormFieldAlcool(),
              buildContainerButton(context),
              buildTextInfo()
            ],
          ),
        ),
      ),
    );
  }

  Text buildTextInfo() {
    return Text(_infoText,
        textAlign: TextAlign.left,
        style: TextStyle(color: Colors.black, fontSize: 20.0));
  }

  Container buildContainerButton(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
      height: 60.0,
      child: RaisedButton(
        onPressed: () {
          if (_formkey.currentState.validate()) {
            calcula();
            FocusScope.of(context).requestFocus(new FocusNode());
          }
        },
        child: Text("Calcular",
            style: TextStyle(color: Colors.white, fontSize: 20.0)),
        color: Colors.orange,
      ),
    );
  }

  TextFormField buildTextFormFieldAlcool() {
    return TextFormField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: "Preço do Álcool",
        labelStyle: TextStyle(color: Colors.black, fontSize: 20.0),
      ),
      controller: alcoolController,
      validator: _validarAlcool,
      onSaved: (String val) {
        alcool = val;
      },
    );
  }

  TextFormField buildTextFormFieldGasolina() {
    return TextFormField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: "Preço da Gasolina",
        labelStyle: TextStyle(color: Colors.black, fontSize: 20.0),
      ),
      controller: gasolinaController,
      validator: (value) {
        if (value.isEmpty) {
          return 'Informe o valor da gasolina';
        }
        return null;
      },
    );
  }

  String _validarAlcool(String value) {
    if (value.isEmpty) {
      return 'Informe o valor da gasolina';
    }
    if (double.parse(value) > 5.0) {
      return 'Valor inválido';
    }
    return null;
  }
}
