import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Heric Freitas',
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
  final web = CarouselController();
  final mobile = CarouselController();
  int index = 0;
  late Timer timer;
  int start = 10;

  @override
  void dispose() {
    web.dispose();
    mobile.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      web.addListener(
        () {},
      );
      mobile.addListener(
        () {},
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF091C3E),
      body: LayoutBuilder(
        builder: (context, constraints) {
          final isMobile = constraints.maxWidth <= 550;
          return SingleChildScrollView(
            child: Padding(
              padding: isMobile
                  ? const EdgeInsets.only(left: 5, top: 5, right: 5)
                  : const EdgeInsets.only(left: 100, top: 100, right: 100),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Align(
                    alignment: isMobile? Alignment.center : Alignment.centerLeft,
                    child: CircleAvatar(
                      radius: isMobile ? 40 : 80,
                      backgroundImage: const AssetImage('assets/perfil.png'),
                      backgroundColor: Colors.white,
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
                            color: Colors.white,
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
                                color: Colors.white,
                                fontSize: isMobile ? 25 : 50,
                                letterSpacing: 5,
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  } else ...{
                    Row(
                      children: [
                        SelectableText(
                          'Olá, me chamo ',
                          textAlign: isMobile ? TextAlign.center : null,
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
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
                                color: Colors.white,
                                fontSize: isMobile ? 25 : 50,
                                letterSpacing: 5,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  },
                  const SizedBox(height: 5),
                  SelectableText(
                    'Faço suas ideias se tornarem realidade',
                    textAlign: isMobile ? TextAlign.center : null,
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        fontSize: isMobile ? 13 : 25,
                        letterSpacing: 5),
                  ),
                  const SizedBox(height: 100),
                  SelectableText(
                    'Sou desenvolvedor Front-end,\nespecializado em desenvolver aplicativos e sites.',
                    textAlign: isMobile ? TextAlign.center : null,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      fontSize: isMobile ? 15 : 30,
                      letterSpacing: 5,
                    ),
                  ),
                  const SizedBox(height: 100),
                  SelectableText(
                    'WhatsApp: (16) 99278-0707\nE-mail: hericfreitas.empresa@gmail.com',
                    textAlign: isMobile ? TextAlign.center : null,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
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
                      color: Colors.white,
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
                          color: Colors.white,
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
                            color: Colors.white,
                            fontSize: isMobile ? 18 : 35,
                            letterSpacing: 5,
                          ),
                        ),
                        const SizedBox(height: 10),
                        SelectableText(
                          'Desenvolvemos uma solução inovadora que simplifica o processo de vendas para lojistas de shopping, permitindo interações diretas com clientes através do WhatsApp. Essa ferramenta potencializa as vendas, oferecendo uma comunicação mais ágil e eficiente entre lojistas e consumidores.',
                          textAlign:
                              isMobile ? TextAlign.center : TextAlign.justify,
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFFCAC9CC),
                            fontSize: isMobile ? 13 : 25,
                            letterSpacing: 5,
                          ),
                        ),
                        const SizedBox(height: 20),
                        SelectableText(
                          'Versão celular:',
                          textAlign:
                              isMobile ? TextAlign.center : TextAlign.justify,
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                            fontSize: isMobile ? 13 : 25,
                            letterSpacing: 5,
                          ),
                        ),
                        ConstrainedBox(
                          constraints: BoxConstraints(
                            maxWidth: MediaQuery.sizeOf(context).width,
                            maxHeight: 600,
                          ),
                          child: CarouselView(
                            shrinkExtent: 200,
                            controller: mobile,
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
                        const SizedBox(height: 20),
                        SelectableText(
                          'Versão web:',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                            fontSize: isMobile ? 13 : 25,
                            letterSpacing: 5,
                          ),
                        ),
                        ConstrainedBox(
                          constraints: BoxConstraints(
                            maxWidth: MediaQuery.sizeOf(context).width,
                            maxHeight: isMobile ? 150 : 600,
                          ),
                          child: CarouselView(
                            shrinkExtent: 200,
                            controller: web,
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
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
