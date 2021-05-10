import 'package:app_medidas/drinks_screen.dart';
import 'package:app_medidas/food_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplicativo Medidas',
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
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
            ),
            title: Text(
              'Compare seus produtos',
              style: GoogleFonts.oswald(),
            ),
            centerTitle: true,
          ),
          body: TabBarView(
            children: [
              DrinksScreen(),
              FoodScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
