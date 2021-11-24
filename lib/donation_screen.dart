import 'package:app_medidas/widgets/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class DonationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorScheme.onPrimary,
      body: Center(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                width: MediaQuery.of(context).size.width * .80,
                height: MediaQuery.of(context).size.height,
                padding: EdgeInsets.all(20.0),
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
                                    text: 'Porque doar? ',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 32),
                                    children: const <TextSpan>[
                                      TextSpan(
                                        text: 'Saiba como',
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
                                  textAlign: TextAlign.justify,
                                  text: TextSpan(
                                    style: TextStyle(
                                      height: 1.5,
                                      letterSpacing: 1.0,
                                    ),
                                    text:
                                        '         No dicionário, doar significa: "Transferir gratuitamente a outrem, de forma legal, bem, quantia, imóvel, vantagens etc. que constituíam objeto de sua propriedade ou patrimônio."',
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
                                        '         O ato de doar, contribui efetivamente com a transformação para o melhor da sociedade, das instituições e, principalmente das pessoas. Ao realizar a sua doação, você estará contribuindo para o desenvolvimento e aprimoramento desse aplicativo, haja vista, ainda existem muitas coisas a serem incrementadas para o melhoramento dessa aplicação.',
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
                                        '         Todos nós sabemos que tudo que é referente a tecnologia, existe um custo por trás de tudo.',
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
                                        '         Por exemplo, para que este aplicativo esteja aqui funcionando como um site na internet, existem alguns custos por trás para que este site possa estar em funcionamento.',
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
                                        '         Ao realizar a sua doação, você estará contribuindo para que esta aplicação se mantenha no ar, assim como também estará contribuindo para que essa aplicação possa evoluir cada vez mais, trazendo assim uma melhor e maior experiência para você usuário e cliente do aplicativo.',
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
                                        '         Nosso próximo passo para melhorar nossa aplicação, será transformá-lo a princípio em aplicativo Android, onde o mesmo poderá ser baixado e instalado diretamente na Google Play. Posteriormente, quem sabe em um curto prazo, já não possa estar disponibilizado em breve, também na Apple Store. Porém, para todas essas melhorias, exige-se um custo de operação.',
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
                                          '         Nos acompanhem em nossas redes sociais, que estaremos colocando por lá todas as informações necessárias acerca das melhorias futuras que serão implementadas em nosso aplicativo.'),
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
                                        '         E não se esqueçam, não deixem de fazer sua doação, pode ser qualquer valor, já será de grande ajuda para o desenvolvimento e melhoramento dessa aplicação.',
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 100,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                      style: TextStyle(
                                        fontSize: 32,
                                        fontWeight: FontWeight.bold,
                                        height: 1.5,
                                        letterSpacing: 1.0,
                                      ),
                                      text: 'Faça sua doação.'),
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
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        height: 1.5,
                                        letterSpacing: 1.0,
                                      ),
                                      text:
                                          '         Veja como fazer sua doação através das seguintes formas:'),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        height: 1.5,
                                        letterSpacing: 1.0,
                                      ),
                                      text: 'PIX'),
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
                                child: Container(
                                  child: Image.asset('images/qr_Code.png'),
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
                                child: Container(
                                  child: Image.asset('images/chave_PIX.png'),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 100,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                      style: TextStyle(
                                        fontSize: 26,
                                        fontWeight: FontWeight.bold,
                                        height: 1.5,
                                        letterSpacing: 1.0,
                                      ),
                                      text: 'Depósito em Conta'),
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
                                        fontSize: 16,
                                        height: 1.5,
                                        letterSpacing: 1.0,
                                      ),
                                      text:
                                          '         Caso prefira, você também pode depositar em nossa conta do Banco do Brasil:'),
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
                                    text: 'Banco do Brasil - ',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                    children: const <TextSpan>[
                                      TextSpan(
                                        text: 'AGÊNCIA: 3853-9 | ',
                                        style: TextStyle(
                                          height: 1.5,
                                          letterSpacing: 1.0,
                                        ),
                                      ),
                                      TextSpan(text: 'CONTA CORRENTE: 23090-1'),
                                    ],
                                  ),
                                ),
                              ),
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

// decoration: BoxDecoration(
//           image: DecorationImage(
//               image: AssetImage(
//                 'images/doacoes.png',
//               ),
//               fit: BoxFit.fitHeight)),
