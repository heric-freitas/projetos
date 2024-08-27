import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HFF Solutions',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: LayoutBuilder(
        builder: (context, constraints) {
          final isMobile = constraints.maxWidth <= 550;
          return SingleChildScrollView(
            child: Padding(
              padding: isMobile
                  ? const EdgeInsets.only(left: 5, top: 5, right: 5)
                  : const EdgeInsets.only(left: 100, top: 25, right: 100),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Align(
                    alignment:
                        isMobile ? Alignment.center : Alignment.centerLeft,
                    child: CircleAvatar(
                      radius: isMobile ? 40 : 80,
                      backgroundImage: const AssetImage('assets/logo.png'),
                      backgroundColor: const Color(0xFFFFFFFF),
                    ),
                  ),
                  const SizedBox(height: 10),
                  if (isMobile) ...{
                    Column(
                      children: [
                        SelectableText(
                          'Olá, me chamo ',
                          textAlign: isMobile ? TextAlign.center : null,
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFF1f60d7),
                            fontSize: isMobile ? 25 : 50,
                            letterSpacing: 5,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SelectableText(
                              'Heric Freitas',
                              textAlign: isMobile ? TextAlign.center : null,
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: const Color(0xFF1f60d7),
                                fontSize: isMobile ? 25 : 50,
                                letterSpacing: 5,
                              ),
                            ),
                          ],
                        ),
                        SelectableText(
                          'Fundador da HFF Solutions',
                          textAlign: isMobile ? TextAlign.center : null,
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFF1f60d7),
                            fontSize: isMobile ? 25 : 50,
                            letterSpacing: 5,
                          ),
                        ),
                      ],
                    )
                  } else ...{
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SelectableText(
                              'Olá, me chamo ',
                              textAlign: isMobile ? TextAlign.center : null,
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: const Color(0xFF1f60d7),
                                fontSize: isMobile ? 25 : 50,
                                letterSpacing: 5,
                              ),
                            ),
                            Row(
                              children: [
                                SelectableText(
                                  'Heric Freitas',
                                  textAlign: isMobile ? TextAlign.center : null,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: const Color(0xFF1f60d7),
                                    fontSize: isMobile ? 25 : 50,
                                    letterSpacing: 5,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SelectableText(
                          'Fundador da HFF Solutions',
                          textAlign: isMobile ? TextAlign.center : null,
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFF1f60d7),
                            fontSize: isMobile ? 18 : 30,
                            letterSpacing: 5,
                          ),
                        ),
                      ],
                    ),
                  },
                  const SizedBox(height: 10),
                  SelectableText(
                    'Faço suas ideias se tornarem realidade',
                    textAlign: isMobile ? TextAlign.center : null,
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: const Color(0xFF4f1fd7),
                        fontStyle: FontStyle.italic,
                        fontSize: isMobile ? 13 : 20,
                        letterSpacing: 5),
                  ),
                  const SizedBox(height: 100),
                  SelectableText(
                    'Desenvolvimento Front-end,\nespecializado em desenvolvimento de aplicativos e sites.',
                    textAlign: isMobile ? TextAlign.center : null,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: const Color(0xFF1f60d7),
                      fontSize: isMobile ? 15 : 30,
                      letterSpacing: 5,
                    ),
                  ),
                  const SizedBox(height: 100),
                  SelectableText(
                    'WhatsApp: (16) 99278-0707\nE-mail: hericfreitas.empresa@gmail.com',
                    textAlign: isMobile ? TextAlign.center : null,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: const Color(0xFF1f60d7),
                      fontSize: isMobile ? 10 : 20,
                      letterSpacing: 5,
                    ),
                  ),
                  const SizedBox(height: 150),
                  SelectableText(
                    'Projetos desenvolvidos',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: const Color(0xFF1f60d7),
                      fontSize: isMobile ? 30 : 60,
                      letterSpacing: 5,
                    ),
                  ),
                  const SizedBox(height: 50),
                  Container(
                    padding: const EdgeInsets.all(35),
                    width: MediaQuery.sizeOf(context).width * .4,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0xFF1f60d7),
                          width: 4,
                        ),
                        borderRadius: BorderRadius.circular(8)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        SelectableText(
                          'Vend.Ai',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFFFECD31),
                            fontSize: isMobile ? 30 : 60,
                            letterSpacing: 5,
                          ),
                        ),
                        const SizedBox(height: 20),
                        SelectableText(
                          'Projeto de Integração de Vendas via WhatsApp para Lojistas de Shopping',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFF1f60d7),
                            fontSize: isMobile ? 18 : 35,
                            letterSpacing: 5,
                          ),
                        ),
                        const SizedBox(height: 15),
                        SelectableText(
                          'Desenvolvemos uma solução inovadora que simplifica o processo de vendas para lojistas de shopping, permitindo interações diretas com clientes através do WhatsApp. Essa ferramenta potencializa as vendas, oferecendo uma comunicação mais ágil e eficiente entre lojistas e consumidores.',
                          textAlign:
                              isMobile ? TextAlign.center : TextAlign.justify,
                          style: TextStyle(
                            fontWeight: FontWeight.w200,
                            color: Colors.black,
                            fontSize: isMobile ? 13 : 25,
                            letterSpacing: 1,
                          ),
                        ),
                        const SizedBox(height: 40),
                        SelectableText(
                          'Versão celular:',
                          textAlign:
                              isMobile ? TextAlign.center : TextAlign.justify,
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFF1f60d7),
                            fontSize: isMobile ? 13 : 25,
                            letterSpacing: 5,
                          ),
                        ),
                        const SizedBox(height: 20),
                        ConstrainedBox(
                          constraints: BoxConstraints(
                            maxWidth: MediaQuery.sizeOf(context).width,
                            maxHeight: 600,
                          ),
                          child: CarouselView(
                            shrinkExtent: 200,
                            itemExtent: isMobile
                                ? MediaQuery.sizeOf(context).width * .65
                                : 300,
                            children: [
                              Image.asset(
                                'assets/chat_mobile.png',
                                fit: BoxFit.fill,
                              ),
                              Image.asset(
                                'assets/home_mobile.png',
                                fit: BoxFit.fill,
                              ),
                              Image.asset(
                                'assets/login_mobile.png',
                                fit: BoxFit.fill,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 40),
                        SelectableText(
                          'Versão web:',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFF1f60d7),
                            fontSize: isMobile ? 13 : 25,
                            letterSpacing: 5,
                          ),
                        ),
                        const SizedBox(height: 20),
                        ConstrainedBox(
                          constraints: BoxConstraints(
                            maxWidth: MediaQuery.sizeOf(context).width,
                            maxHeight: isMobile ? 150 : 600,
                          ),
                          child: CarouselView(
                            shrinkExtent: 200,
                            itemExtent: isMobile
                                ? MediaQuery.sizeOf(context).width * .65
                                : MediaQuery.sizeOf(context).width * .56,
                            children: [
                              Image.asset(
                                'assets/chat_web.png',
                                fit: isMobile
                                    ? BoxFit.fitWidth
                                    : BoxFit.fitHeight,
                              ),
                              Image.asset(
                                'assets/home_web.png',
                                fit: isMobile
                                    ? BoxFit.fitWidth
                                    : BoxFit.fitHeight,
                              ),
                              Image.asset(
                                'assets/login_web.png',
                                fit: isMobile
                                    ? BoxFit.fitWidth
                                    : BoxFit.fitHeight,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    padding: const EdgeInsets.all(35),
                    width: MediaQuery.sizeOf(context).width * .4,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0xFF1f60d7),
                          width: 4,
                        ),
                        borderRadius: BorderRadius.circular(8)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        SelectableText(
                          'Pagstar',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFF55189A),
                            fontSize: isMobile ? 30 : 60,
                            letterSpacing: 5,
                          ),
                        ),
                        const SizedBox(height: 20),
                        SelectableText(
                          'Projeto de Carteira digital',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFF1f60d7),
                            fontSize: isMobile ? 18 : 35,
                            letterSpacing: 5,
                          ),
                        ),
                        const SizedBox(height: 15),
                        SelectableText(
                          'Após ter um aplicativo já lançado nas principais lojas de apps, lamentavelmente, o mesmo não recebeu uma boa aceitação inicial por parte dos usuários, com avaliações muito baixas. Diante dessa situação desafiadora, fui chamado e assumi o compromisso de resgatar esse aplicativo, revisitando seu design, funcionalidades e experiência do usuário, a fim de transformá-lo em uma solução verdadeiramente relevante e atraente para o público-alvo.',
                          textAlign:
                              isMobile ? TextAlign.center : TextAlign.justify,
                          style: TextStyle(
                            fontWeight: FontWeight.w200,
                            color: Colors.black,
                            fontSize: isMobile ? 13 : 25,
                            letterSpacing: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    padding: const EdgeInsets.all(35),
                    width: MediaQuery.sizeOf(context).width * .4,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0xFF1f60d7),
                          width: 4,
                        ),
                        borderRadius: BorderRadius.circular(8)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        SelectableText(
                          'Albert Einstein',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFF1B3B74),
                            fontSize: isMobile ? 30 : 60,
                            letterSpacing: 5,
                          ),
                        ),
                        const SizedBox(height: 20),
                        SelectableText(
                          'Projeto de saúde',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFF1f60d7),
                            fontSize: isMobile ? 18 : 35,
                            letterSpacing: 5,
                          ),
                        ),
                        const SizedBox(height: 15),
                        SelectableText(
                          'Desenvolvimento de funcionalidades novas tanto no site quanto no aplicativo do hospital, tais quais posteriormente foram integrados com o aplicativo já existente.',
                          textAlign:
                              isMobile ? TextAlign.center : TextAlign.justify,
                          style: TextStyle(
                            fontWeight: FontWeight.w200,
                            color: Colors.black,
                            fontSize: isMobile ? 13 : 25,
                            letterSpacing: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
