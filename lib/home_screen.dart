import 'package:app_medidas/drinks_screen_money.dart';
import 'package:app_medidas/food_screen_money.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// var textBebidas = Text('Bebidas', style: GoogleFonts.oswald());

void main() => runApp(HomeScreen());

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      title: 'Aplicativo Pesa Peso',
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              'Aplicativo Pesa Preço',
              style: GoogleFonts.oswald(),
            ),
            centerTitle: true,
            bottom: TabBar(
              tabs: [
                Tab(
                  text: "Bebidas",
                  icon: Icon(Icons.local_drink_outlined),
                ),
                Tab(
                  text: "Comidas",
                  icon: Icon(Icons.account_balance),
                ),
              ],
              // indicator: ShapeDecoration(
              //     shape: RoundedRectangleBorder(
              //         borderRadius: BorderRadius.only(
              //   topRight: Radius.circular(200.0),
              //   topLeft: Radius.circular(200.0),
              // ))),
            ),
          ),
          body: TabBarView(
            children: [
              DrinksScreenMoney(),
              FoodScreenMoney(),
              // AlertsTestes(),
            ],
          ),
        ),
      ),
    );
  }
}
