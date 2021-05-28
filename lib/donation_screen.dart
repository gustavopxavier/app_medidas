import 'package:app_medidas/widgets/theme.dart';
import 'package:flutter/material.dart';

class DonationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: colorScheme.primary,
      ),
      home: Container(
        color: colorScheme.primary,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: Image.asset(
              'images/doacoes.png',
            ),
          ),
        ),
      ),
    );
  }
}

// decoration: BoxDecoration(
//           image: DecorationImage(
//               image: AssetImage(
//                 'images/doacoes.png',
//               ),
//               fit: BoxFit.fitHeight)),
