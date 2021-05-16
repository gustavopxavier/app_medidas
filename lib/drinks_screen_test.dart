// import 'dart:developer';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:moneytextformfield/moneytextformfield.dart';

// final _inputFieldHeight = 60.0;
// // final _moneyFormat = NumberFormat("#,##0.00", "pt_BR");

// class DrinksScreenTest extends StatefulWidget {
//   @override
//   _DrinksScreenState createState() => _DrinksScreenState();
// }

// class _DrinksScreenState extends State<DrinksScreenTest> {
//   TextEditingController weightController = TextEditingController();
//   TextEditingController priceController = TextEditingController();

//   GlobalKey<FormState> _formKey = GlobalKey<FormState>();

//   String doisMeiaNove = "";
//   String tresTresZero = "";
//   String tresCincoZero = "";
//   String quatroSeteTres = "";
//   String seisSeisZero = "";
//   String Hum_mil = "";

//   // void _resetFields() {
//   //   weightController.text = "";
//   //   priceController.text = "";
//   //   setState(() {
//   //     doisMeiaNove = "";
//   //     tresTresZero = "";
//   //     tresCincoZero = "";
//   //     quatroSeteTres = "";
//   //     seisSeisZero = "";
//   //     Hum_mil = "";
//   //   });
//   // }

//   // TODO: Fazer no food_screen também
//   Widget _moneyCustomized() {
//     print('Entrou no moneyCustomized');
//     TextStyle _ts = TextStyle(fontSize: 26.0);

//     var priceController = MoneyTextFormField(
//                       settings: MoneyTextFormFieldSettings(
//                           controller: priceController,
//                           moneyFormatSettings: MoneyFormatSettings(
//                               currencySymbol: 'R\$',
//                               displayFormat: MoneyDisplayFormat.symbolOnRight),
//                           appearanceSettings: AppearanceSettings(
//                               padding: EdgeInsets.all(15.0),
//                               labelText: 'Long Format Demo',
//                               hintText: 'Custom Placeholder',
//                               labelStyle: _ts,
//                               inputStyle: _ts.copyWith(color: Colors.orange),
//                               formattedStyle:
//                                   _ts.copyWith(color: Colors.blue))),
//                     ),

//     ),

//     // return new TextFormField(
//     //   keyboardType: TextInputType.number,
//     //   decoration: InputDecoration(
//     //     icon: Icon(Icons.monetization_on),
//     //     hintText: 'Digite o preço do produto',
//     //     labelText: "Preço (R\$)",
//     //     labelStyle: TextStyle(
//     //         // color: Colors.lightBlue,
//     //         ),
//     //     border: _roundedInputDecoration(),
//     //   ),
//     //   textAlign: TextAlign.center,
//     //   style: TextStyle(
//     //     // color: Colors.lightBlue,
//     //     fontSize: 12.0,
//     //   ),
//     //   // controller: priceController,
//     //   inputFormatters: <TextInputFormatter>[
//     //     FilteringTextInputFormatter.digitsOnly,
//     //     // RealInputFormatter(centavos: true),
//     //   ],
//     //   validator: (value) {
//     //     if (value.isEmpty) {
//     //       return "Insira o Preço (R\$)";
//     //     }
//     //   },
//     // );
//   }

//   void _calculateImc() {
//     setState(
//       () {
//         print('Entrou no setstate');

//         double weight = double.parse(weightController.text);
//         print('Peso: ${weightController.text}');
//         print('Preço: ${priceController}');
//         double price = double.parse(priceController.text);

//         // double imc = weight / (price * price);

//         double um_Ml = price / weight;
//         double calc_doisMeiaNove = um_Ml * 269;
//         double calc_tresTresZero = um_Ml * 330; // Garrafa de vidro 330ml
//         double calc_tresCincoZero = um_Ml * 350; // tresCincoZero de 350ml
//         double calc_quatroSeteTres = um_Ml * 473; // Lata de 473ml
//         double calc_seisSeisZero = um_Ml * 600; // Garrafa de vidro 600ml
//         double calc_Hum_mil = um_Ml * 1000; // Garrafa de um litro

//         doisMeiaNove =
//             "Produto (269ml): R\$ ${calc_doisMeiaNove.toStringAsFixed(2)}";
//         tresTresZero =
//             "Produto (330ml): R\$ ${calc_tresTresZero.toStringAsFixed(2)}";
//         tresCincoZero =
//             "Produto (350ml): R\$ ${calc_tresCincoZero.toStringAsFixed(2)}";
//         quatroSeteTres =
//             "Produto (473ml): R\$ ${calc_quatroSeteTres.toStringAsFixed(2)}";
//         seisSeisZero =
//             "Produto (600ml): R\$ ${calc_seisSeisZero.toStringAsFixed(2)}";
//         Hum_mil = "Produto (1l): R\$ ${calc_Hum_mil.toStringAsFixed(2)}";
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {

//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0.0,
//         // title: Text("teste"),
//         centerTitle: true,
//         backgroundColor: Colors.white,
//         actions: <Widget>[
//           IconButton(
//             icon: Icon(Icons.refresh),
//             color: Colors.lightBlue,
//             // onPressed: _resetFields,
//             onPressed: () {},
//           )
//         ],
//       ),
//       backgroundColor: Colors.white,
//       // TODO: Adicionar sizebox e MediaQuery na food_screen.dart também
//       body: SizedBox(
//         width: MediaQuery.of(context).size.width,
//         height: MediaQuery.of(context).size.height,
//         child: SingleChildScrollView(
//           // TODO: Formatar padding ma food_screen.dart também
//           padding: EdgeInsets.fromLTRB(70.0, 0.0, 70.0, 20.0),
//           child: Form(
//             key: _formKey,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: <Widget>[
//                 // Icon(
//                 //   Icons.wine_bar,
//                 //   size: 40.0,
//                 //   color: Colors.lightBlue,
//                 // ),
//                 SizedBox(
//                   height: 30.0,
//                 ),
//                 TextFormField(
//                   keyboardType: TextInputType.number,
//                   decoration: InputDecoration(
//                     icon: Icon(Icons.liquor),
//                     hintText: 'Digite a quantidade de ml',
//                     labelText: "Mililitros (ml)",
//                     labelStyle: TextStyle(
//                         // color: Colors.lightBlue,
//                         ),
//                     border: _roundedInputDecoration(),
//                     isDense: true,
//                   ),
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     // color: Colors.lightBlue,
//                     fontSize: 10.0,
//                     // fontWeight: FontWeight.bold,
//                   ),
//                   controller: weightController,
//                   inputFormatters: <TextInputFormatter>[
//                     FilteringTextInputFormatter.digitsOnly
//                   ],
//                   validator: (value) {
//                     if (value.isEmpty) {
//                       return "Insira quantos mililitros (ml)";
//                     }
//                   },
//                 ),
//                 SizedBox(
//                   height: 30.0,
//                 ),
// ///////////////////////Entrada do campo moeda
//                 _moneyCustomized(),
//                 SizedBox(
//                   height: 30.0,
//                 ),
//                 Padding(
//                   padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
//                   child: Container(
//                     height: 50.0,
//                     child: TextButton.icon(
//                       icon: Icon(
//                         Icons.calculate,
//                         size: 30,
//                       ),
//                       label: Text(
//                         'Calcular Teste',
//                         style: GoogleFonts.oswald(fontSize: 20.0),
//                       ),
//                       style: ButtonStyle(
//                         backgroundColor: MaterialStateProperty.all(
//                           Colors.lightBlue,
//                         ),
//                         foregroundColor: MaterialStateProperty.all(
//                           Colors.white,
//                         ),
//                       ),
//                       onPressed: () {
//                         print('Clicou no botão calcular');
//                         if (_formKey.currentState.validate()) {
//                           _calculateImc();
//                         }
//                       },
//                     ),
//                   ),
//                 ),
//                 Container(
//                   padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
//                   height: 220,
//                   width: double.maxFinite,
//                   child: ListView(
//                     children: [
//                       Card(
//                         elevation: 0.0,
//                         child: Padding(
//                           padding: EdgeInsets.all(7),
//                           child: Stack(
//                             children: <Widget>[
//                               Padding(
//                                 padding: const EdgeInsets.only(
//                                   left: 10,
//                                   top: 5,
//                                 ),
//                                 child: Column(
//                                   children: <Widget>[
//                                     Row(
//                                       children: <Widget>[
//                                         Text(doisMeiaNove),
//                                       ],
//                                     )
//                                   ],
//                                 ),
//                               )
//                             ],
//                           ),
//                         ),
//                       ),
//                       Card(
//                         elevation: 0.0,
//                         child: Padding(
//                           padding: EdgeInsets.all(7),
//                           child: Stack(
//                             children: <Widget>[
//                               Padding(
//                                 padding: const EdgeInsets.only(
//                                   left: 10,
//                                   top: 5,
//                                 ),
//                                 child: Column(
//                                   children: <Widget>[
//                                     Row(
//                                       children: <Widget>[
//                                         Text(tresTresZero),
//                                       ],
//                                     )
//                                   ],
//                                 ),
//                               )
//                             ],
//                           ),
//                         ),
//                       ),
//                       Card(
//                         elevation: 0.0,
//                         child: Padding(
//                           padding: EdgeInsets.all(7),
//                           child: Stack(
//                             children: <Widget>[
//                               Padding(
//                                 padding: const EdgeInsets.only(
//                                   left: 10,
//                                   top: 5,
//                                 ),
//                                 child: Column(
//                                   children: <Widget>[
//                                     Row(
//                                       children: <Widget>[
//                                         Text(tresCincoZero),
//                                       ],
//                                     )
//                                   ],
//                                 ),
//                               )
//                             ],
//                           ),
//                         ),
//                       ),
//                       Card(
//                         elevation: 0.0,
//                         child: Padding(
//                           padding: EdgeInsets.all(7),
//                           child: Stack(
//                             children: <Widget>[
//                               Padding(
//                                 padding: const EdgeInsets.only(
//                                   left: 10,
//                                   top: 5,
//                                 ),
//                                 child: Column(
//                                   children: <Widget>[
//                                     Row(
//                                       children: <Widget>[
//                                         Text(quatroSeteTres),
//                                       ],
//                                     )
//                                   ],
//                                 ),
//                               )
//                             ],
//                           ),
//                         ),
//                       ),
//                       Card(
//                         elevation: 0.0,
//                         child: Padding(
//                           padding: EdgeInsets.all(7),
//                           child: Stack(
//                             children: <Widget>[
//                               Padding(
//                                 padding: const EdgeInsets.only(
//                                   left: 10,
//                                   top: 5,
//                                 ),
//                                 child: Column(
//                                   children: <Widget>[
//                                     Row(
//                                       children: <Widget>[
//                                         Text(seisSeisZero),
//                                       ],
//                                     )
//                                   ],
//                                 ),
//                               )
//                             ],
//                           ),
//                         ),
//                       ),
//                       Card(
//                         elevation: 0.0,
//                         child: Padding(
//                           padding: EdgeInsets.all(7),
//                           child: Stack(
//                             children: <Widget>[
//                               Padding(
//                                 padding: const EdgeInsets.only(
//                                   left: 10,
//                                   top: 5,
//                                 ),
//                                 child: Column(
//                                   children: <Widget>[
//                                     Row(
//                                       children: <Widget>[
//                                         Text(Hum_mil),
//                                       ],
//                                     )
//                                   ],
//                                 ),
//                               )
//                             ],
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// _roundedInputDecoration() {
//   return OutlineInputBorder(
//       borderRadius: BorderRadius.circular(_inputFieldHeight * 0.5));
// }
