import 'package:flutter/material.dart';

class DonationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'images/doacoes.png',
              ),
              fit: BoxFit.fitHeight)),
      // child: OverflowBox(
      //   minWidth: 0.0,
      //   minHeight: 0.0,
      //   maxWidth: double.infinity,
      //   child: Image(
      //     image: AssetImage('images/doacoes.png'),
      //     fit: BoxFit.cover,
      //   ),
      // ),
    );
  }
}

// decoration: BoxDecoration(
//           image: DecorationImage(
//               image: AssetImage(
//                 'images/doacoes.png',
//               ),
//               fit: BoxFit.fitHeight)),
