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
                  'images/imagem_cabeçalho.png',
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
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                    text: 'Aplicativo ',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 32),
                                    children: const <TextSpan>[
                                      TextSpan(
                                        text: 'Pesa Preço',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(text: '!'),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: RichText(
                                  text: TextSpan(
                                    style: TextStyle(
                                      height: 1.5,
                                      letterSpacing: 1.0,
                                    ),
                                    text:
                                        '         Afinal de contas, o que é o App Pesa Preço?',
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: RichText(
                                  textAlign: TextAlign.justify,
                                  text: TextSpan(
                                      style: TextStyle(
                                        height: 1.5,
                                        letterSpacing: 1.0,
                                      ),
                                      text:
                                          '         O App Pesa Preço surgiu com a necessidade de tirar dúvidas relacionadas aos preços de produtos de uma mesma marca ou não e que possuem tamanhos diferentes seja ele em milímetros ou em gramas.'),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: RichText(
                                  text: TextSpan(
                                      style: TextStyle(
                                        height: 1.5,
                                        letterSpacing: 1.0,
                                      ),
                                      text:
                                          '         Como assim? Explique melhor.'),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: RichText(
                                  textAlign: TextAlign.justify,
                                  text: TextSpan(
                                      style: TextStyle(
                                        height: 1.5,
                                        letterSpacing: 1.0,
                                      ),
                                      text:
                                          '         Vamos lá, se você vai ao supermercado e deseja comprar leite em pó, ao chegar na seção você irá se deparar com várias marcas de leite em pó.'),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: RichText(
                                  textAlign: TextAlign.justify,
                                  text: TextSpan(
                                      style: TextStyle(
                                        height: 1.5,
                                        letterSpacing: 1.0,
                                      ),
                                      text:
                                          '         Além das marcas, muitas das vezes você também se depara com um produto da mesma marca, porém com diferentes tamanhos. Então ao verificar o preço dos diferentes tamanhos, lhe vem a pergunta: "Será que vale mais a pena comprar o produto maior ou o menor? Qual será o mais econômico?"'),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: RichText(
                                  textAlign: TextAlign.justify,
                                  text: TextSpan(
                                      style: TextStyle(
                                        height: 1.5,
                                        letterSpacing: 1.0,
                                      ),
                                      text:
                                          '         Você não vai pegar uma calculadora para fazer os cálculos, ou vai?'),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: RichText(
                                  textAlign: TextAlign.justify,
                                  text: TextSpan(
                                      style: TextStyle(
                                        height: 1.5,
                                        letterSpacing: 1.0,
                                      ),
                                      text:
                                          '         Não precisa, basta usar o Aplicativo Pesa Preço.'),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: RichText(
                                  textAlign: TextAlign.justify,
                                  text: TextSpan(
                                      style: TextStyle(
                                        height: 1.5,
                                        letterSpacing: 1.0,
                                      ),
                                      text:
                                          '         E não se engane, muitas das vezes somos lesado achando que ao comprar um produto com uma maior quantidade, estamos economizando, onde na verdade se você comprar várias quantidades desse mesmo produto no tamanho menor, saíra mais barato do que você comprar um único produto de um tamanho maior.'),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: RichText(
                                  textAlign: TextAlign.justify,
                                  text: TextSpan(
                                      style: TextStyle(
                                        height: 1.5,
                                        letterSpacing: 1.0,
                                      ),
                                      text:
                                          '       Posteriormente mostraremos alguns exemplos de como utilizar o aplicativo e em breve estaremos disponibilizando aqui mesmo no App uma sessão de ajuda contendo um manual de utilização.'),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: RichText(
                                  textAlign: TextAlign.justify,
                                  text: TextSpan(
                                      style: TextStyle(
                                        height: 1.5,
                                        letterSpacing: 1.0,
                                      ),
                                      text:
                                          '         Caso haja dúvidas na utilização do aplicativo, vá até a sessão de "Contatos" aqui do nosso aplicativo e entre em contato conosco através de algum dos nossos contatos existente.'),
                                ),
                              )
                            ],
                          ),
                        ],
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
