import 'package:app_medidas/custom_screen_money.dart';
import 'package:app_medidas/drinks_screen_money.dart';
import 'package:app_medidas/food_screen_money.dart';
import 'package:app_medidas/widgets/theme.dart';
import 'package:flutter/material.dart';

// var textBebidas = Text('Bebidas', style: GoogleFonts.oswald());

// void main() => runApp(CalcScreen());

class CalcScreen extends StatefulWidget {
  @override
  _CalcScreenState createState() => _CalcScreenState();
}

class _CalcScreenState extends State<CalcScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: colorScheme,
        primaryColor: colorScheme.primary,
        accentColor: colorScheme.secondary,
        backgroundColor: colorScheme.background,
        buttonTheme: ButtonThemeData(
          textTheme: ButtonTextTheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
            foregroundColor: colorScheme.onSecondary),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        cardTheme: CardTheme(
          elevation: 10.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
        dividerColor: Color(0xFF000000),
        textTheme: textTheme,
        primaryTextTheme: textTheme,
        accentTextTheme: textTheme,
      ),
      title: 'Aplicativo Pesa Preço',
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: colorScheme.primary,
            elevation: 0.0,
            // title: Text(
            //   '',
            // ),
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
                Tab(
                  text: "Variados",
                  icon: Icon(Icons.home_mini),
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
          backgroundColor: colorScheme.primary,
          body: Center(
            child: Container(
              width: MediaQuery.of(context).size.width * .80,
              height: MediaQuery.of(context).size.height,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                child: Card(
                  child: Container(
                    padding: EdgeInsets.all(7.0),
                    child: TabBarView(
                      children: [
                        DrinksScreenMoney(),
                        FoodScreenMoney(),
                        CustomScreenMoney(),

                        // AlertsTestes(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
