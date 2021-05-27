import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:app_medidas/calc_screen.dart';
import 'package:app_medidas/first_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
      title: 'Aplicativo Pesa Preço',
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      title: 'Aplicativo Pesa Preço',
      //TODO: Ajeitar splash
      home: AnimatedSplashScreen(
        duration: 3000,
        splash: 'images/logotipo.gif',
        nextScreen: FirstScreen(),
        splashTransition: SplashTransition.fadeTransition,
        backgroundColor: Colors.white,
      ),
    );
  }
}
