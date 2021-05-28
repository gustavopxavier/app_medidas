import 'package:app_medidas/widgets/theme.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatefulWidget {
  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: colorScheme.primary,
      child: Center(
        child: Text('Teste Start Screen'),
      ),
    );
  }
}
