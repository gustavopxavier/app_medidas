import 'package:app_medidas/calc_screen.dart';
import 'package:app_medidas/contact_screen.dart';
import 'package:app_medidas/donation_screen.dart';
import 'package:app_medidas/start_screen.dart';
import 'package:app_medidas/widgets/theme.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pesa Peso',
      home: MyFirstScreen(),
    );
  }
}

class MyFirstScreen extends StatefulWidget {
  @override
  _MyFirstScreenState createState() => _MyFirstScreenState();
}

class _MyFirstScreenState extends State<MyFirstScreen> {
  int _currentIndex = 0;

  final tabs = [
    StartScreen(),
    CalcScreen(),
    DonationScreen(),
    ContactScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        elevation: 0.0,
        selectedItemColor: colorScheme.surface,
        unselectedItemColor: colorScheme.surface.withOpacity(.60),
        selectedLabelStyle: textTheme.caption,
        unselectedLabelStyle: textTheme.caption,
        onTap: (value) {
          // Respond to item press.
          setState(() => _currentIndex = value);
        },
        iconSize: 30,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Início',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Calcular',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Doações',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Contatos',
          ),
        ],
      ),
    );
  }
}
