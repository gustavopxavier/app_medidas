import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:app_medidas/first_screen.dart';
import 'package:app_medidas/widgets/theme.dart';
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
      theme: ThemeData(
        colorScheme: colorScheme,
        primaryColor: colorScheme.primary,
        accentColor: colorScheme.primaryVariant,
        backgroundColor: colorScheme.background,
      ),
      debugShowCheckedModeBanner: false,
      title: 'Aplicativo Pesa Preço',
      //TODO: Ajeitar splash
      home: AnimatedSplashScreen(
        duration: 3000,
        splash: 'images/logo.png',
        nextScreen: FirstScreen(),
        splashTransition: SplashTransition.fadeTransition,
        backgroundColor: colorScheme.primary,
      ),
    );
  }
}
