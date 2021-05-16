import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:app_medidas/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
      title: 'Aplicativo Medidas',
      // theme: ThemeData(fontFamily: GoogleFonts.oswald(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      title: 'Aplicativo Medidas',
      home: AnimatedSplashScreen(
        duration: 3000,
        splash: Icons.home,
        nextScreen: HomeScreen(),
        splashTransition: SplashTransition.fadeTransition,
        backgroundColor: Colors.blue,
      ),
    );
  }
}
