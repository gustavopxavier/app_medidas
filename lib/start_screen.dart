import 'package:app_medidas/widgets/theme.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatefulWidget {
  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorScheme.onPrimary,
      body: Center(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                width: 100.0,
                height: 100.0,
                child: Image.asset(
                  'images/balança_simples.png',
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.all(50.0),
                // color: colorScheme.primary,
                decoration: BoxDecoration(
                    color: colorScheme.primary,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50.0),
                        topRight: Radius.circular(50.0))),
                child: Container(
                  child: SingleChildScrollView(
                    child: Container(
                      padding: EdgeInsets.all(20.0),
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis a dapibus purus. Nam consequat sed odio vitae aliquam. Aliquam quis sem diam. Praesent nec varius tellus. Vestibulum dapibus scelerisque lorem, ac tristique dolor pretium ut. Curabitur id orci vehicula leo fringilla varius. Nam ultrices fringilla mi sed porttitor. Nam at nisi blandit, aliquam mi sit amet, posuere elit. Cras eget vestibulum diam. Vivamus et ullamcorper metus, at vehicula sapien. Vestibulum id sollicitudin orci, vitae facilisis ipsum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis a dapibus purus. Nam consequat sed odio vitae aliquam. Aliquam quis sem diam. Praesent nec varius tellus. Vestibulum dapibus scelerisque lorem, ac tristique dolor pretium ut. Curabitur id orci vehicula leo fringilla varius. Nam ultrices fringilla mi sed porttitor. Nam at nisi blandit, aliquam mi sit amet, posuere elit. Cras eget vestibulum diam. Vivamus et ullamcorper metus, at vehicula sapien. Vestibulum id sollicitudin orci, vitae facilisis ipsum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis a dapibus purus. Nam consequat sed odio vitae aliquam. Aliquam quis sem diam. Praesent nec varius tellus. Vestibulum dapibus scelerisque lorem, ac tristique dolor pretium ut. Curabitur id orci vehicula leo fringilla varius. Nam ultrices fringilla mi sed porttitor. Nam at nisi blandit, aliquam mi sit amet, posuere elit. Cras eget vestibulum diam. Vivamus et ullamcorper metus, at vehicula sapien. Vestibulum id sollicitudin orci, vitae facilisis ipsum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis a dapibus purus. Nam consequat sed odio vitae aliquam. Aliquam quis sem diam. Praesent nec varius tellus. Vestibulum dapibus scelerisque lorem, ac tristique dolor pretium ut. Curabitur id orci vehicula leo fringilla varius. Nam ultrices fringilla mi sed porttitor. Nam at nisi blandit, aliquam mi sit amet, posuere elit. Cras eget vestibulum diam. Vivamus et ullamcorper metus, at vehicula sapien. Vestibulum id sollicitudin orci, vitae facilisis ipsum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis a dapibus purus. Nam consequat sed odio vitae aliquam. Aliquam quis sem diam. Praesent nec varius tellus. Vestibulum dapibus scelerisque lorem, ac tristique dolor pretium ut. Curabitur id orci vehicula leo fringilla varius. Nam ultrices fringilla mi sed porttitor. Nam at nisi blandit, aliquam mi sit amet, posuere elit. Cras eget vestibulum diam. Vivamus et ullamcorper metus, at vehicula sapien. Vestibulum id sollicitudin orci, vitae facilisis ipsum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis a dapibus purus. Nam consequat sed odio vitae aliquam. Aliquam quis sem diam. Praesent nec varius tellus. Vestibulum dapibus scelerisque lorem, ac tristique dolor pretium ut. Curabitur id orci vehicula leo fringilla varius. Nam ultrices fringilla mi sed porttitor. Nam at nisi blandit, aliquam mi sit amet, posuere elit. Cras eget vestibulum diam. Vivamus et ullamcorper metus, at vehicula sapien. Vestibulum id sollicitudin orci, vitae facilisis ipsum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis a dapibus purus. Nam consequat sed odio vitae aliquam. Aliquam quis sem diam. Praesent nec varius tellus. Vestibulum dapibus scelerisque lorem, ac tristique dolor pretium ut. Curabitur id orci vehicula leo fringilla varius. Nam ultrices fringilla mi sed porttitor. Nam at nisi blandit, aliquam mi sit amet, posuere elit. Cras eget vestibulum diam. Vivamus et ullamcorper metus, at vehicula sapien. Vestibulum id sollicitudin orci, vitae facilisis ipsum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis a dapibus purus. Nam consequat sed odio vitae aliquam. Aliquam quis sem diam. Praesent nec varius tellus. Vestibulum dapibus scelerisque lorem, ac tristique dolor pretium ut. Curabitur id orci vehicula leo fringilla varius. Nam ultrices fringilla mi sed porttitor. Nam at nisi blandit, aliquam mi sit amet, posuere elit. Cras eget vestibulum diam. Vivamus et ullamcorper metus, at vehicula sapien. Vestibulum id sollicitudin orci, vitae facilisis ipsum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis a dapibus purus. Nam consequat sed odio vitae aliquam. Aliquam quis sem diam. Praesent nec varius tellus. Vestibulum dapibus scelerisque lorem, ac tristique dolor pretium ut. Curabitur id orci vehicula leo fringilla varius. Nam ultrices fringilla mi sed porttitor. Nam at nisi blandit, aliquam mi sit amet, posuere elit. Cras eget vestibulum diam. Vivamus et ullamcorper metus, at vehicula sapien. Vestibulum id sollicitudin orci, vitae facilisis ipsum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis a dapibus purus. Nam consequat sed odio vitae aliquam. Aliquam quis sem diam. Praesent nec varius tellus. Vestibulum dapibus scelerisque lorem, ac tristique dolor pretium ut. Curabitur id orci vehicula leo fringilla varius. Nam ultrices fringilla mi sed porttitor. Nam at nisi blandit, aliquam mi sit amet, posuere elit. Cras eget vestibulum diam. Vivamus et ullamcorper metus, at vehicula sapien. Vestibulum id sollicitudin orci, vitae facilisis ipsum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis a dapibus purus. Nam consequat sed odio vitae aliquam. Aliquam quis sem diam. Praesent nec varius tellus. Vestibulum dapibus scelerisque lorem, ac tristique dolor pretium ut. Curabitur id orci vehicula leo fringilla varius. Nam ultrices fringilla mi sed porttitor. Nam at nisi blandit, aliquam mi sit amet, posuere elit. Cras eget vestibulum diam. Vivamus et ullamcorper metus, at vehicula sapien. Vestibulum id sollicitudin orci, vitae facilisis ipsum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis a dapibus purus. Nam consequat sed odio vitae aliquam. Aliquam quis sem diam. Praesent nec varius tellus. Vestibulum dapibus scelerisque lorem, ac tristique dolor pretium ut. Curabitur id orci vehicula leo fringilla varius. Nam ultrices fringilla mi sed porttitor. Nam at nisi blandit, aliquam mi sit amet, posuere elit. Cras eget vestibulum diam. Vivamus et ullamcorper metus, at vehicula sapien. Vestibulum id sollicitudin orci, vitae facilisis ipsum. ',
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// class _StartScreenState extends State<StartScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: MediaQuery.of(context).size.width,
//       height: 100,
//       decoration: BoxDecoration(
//         image: DecorationImage(
//           image: AssetImage('images/balança_simples.png'),
//         ),
//       ),
//       child: Center(
//         child: Text('Teste Start Screen'),
//       ),
//     );
//   }
// }
