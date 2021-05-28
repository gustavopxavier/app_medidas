import 'package:app_medidas/calc_screen.dart';
import 'package:app_medidas/contact_screen.dart';
import 'package:app_medidas/donation_screen.dart';
import 'package:app_medidas/start_screen.dart';
import 'package:app_medidas/widgets/theme.dart';
import 'package:flutter/material.dart';

void main() => runApp(const FirstScreen());

/// This is the main application widget.
class FirstScreen extends StatelessWidget {
  const FirstScreen({key}) : super(key: key);

  static const String _title = 'Pesa Preço';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

/// This is the stateful widget that the main application instantiates.
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  // static const TextStyle optionStyle =
  //     TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    StartScreen(),
    CalcScreen(),
    DonationScreen(),
    ContactScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorScheme.onPrimary,
        elevation: 0.0,
        title: const Text(
          'Aplicativo Pesa Preço',
        ),
        centerTitle: true,
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: colorScheme.primary,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Início',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Calcular',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.monetization_on),
            label: 'Doação',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_page_rounded),
            label: 'Contato',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
