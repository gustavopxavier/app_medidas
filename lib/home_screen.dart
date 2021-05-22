import 'package:app_medidas/drinks_screen_money.dart';
import 'package:app_medidas/food_screen_money.dart';
import 'package:app_medidas/widgets/theme.dart';
import 'package:flutter/material.dart';

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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: colorScheme,
        primaryColor: colorScheme.primary,
        accentColor: colorScheme.secondary,
        backgroundColor: colorScheme.background,
        buttonTheme: ButtonThemeData(
          textTheme: ButtonTextTheme.primary,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
            foregroundColor: colorScheme.onSecondary),
        inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(4))),
        cardTheme: CardTheme(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        ),
        dividerColor: Color(0xFF000000),
        textTheme: textTheme,
        primaryTextTheme: textTheme,
        accentTextTheme: textTheme,
      ),
      title: 'Aplicativo Pesa Preço',
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              'Aplicativo Pesa Preço',
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
