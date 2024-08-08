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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF091C3E),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: Padding(
              padding: constraints.maxWidth <= 550
                  ? const EdgeInsets.only(left: 5, top: 5, right: 5)
                  : const EdgeInsets.only(left: 100, top: 100, right: 100),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    children: [
                      SelectableText(
                        'Olá, me chamo ',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          fontSize: constraints.maxWidth <= 550 ? 25 : 50,
                          letterSpacing: 5,
                        ),
                      ),
                      Row(
                        children: [
                          SelectableText(
                            'Heric Freitas',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                              fontSize: constraints.maxWidth <= 550 ? 25 : 50,
                              letterSpacing: 5,
                            ),
                          ),
                          SizedBox(
                            width: constraints.maxWidth <= 550 ? 5 : 20,
                          ),
                          CircleAvatar(
                            radius: constraints.maxWidth <= 550 ? 20 : 40,
                            backgroundImage:
                                const AssetImage('assets/perfil.png'),
                            backgroundColor: Colors.white,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  SelectableText(
                    'Faço suas ideias se tornarem realidade',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        fontSize: constraints.maxWidth <= 550 ? 13 : 25,
                        letterSpacing: 5),
                  ),
                  const SizedBox(height: 100),
                  SelectableText(
                    'Sou desenvolvedor Front-end,\nespecializado em desenvolver aplicativos e sites.',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      fontSize: constraints.maxWidth <= 550 ? 15 : 30,
                      letterSpacing: 5,
                    ),
                  ),
                  const SizedBox(height: 100),
                  SelectableText(
                    'Para entrar em contato:',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      fontSize: constraints.maxWidth <= 550 ? 15 : 30,
                      letterSpacing: 5,
                    ),
                  ),
                  SelectableText(
                    'WhatsApp: (16) 99278-0707\nE-mail: hericfreitas.empresa@gmail.com',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      fontSize: constraints.maxWidth <= 550 ? 10 : 20,
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
                      fontSize: constraints.maxWidth <= 550 ? 30 : 60,
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
                            fontSize: constraints.maxWidth <= 550 ? 30 : 60,
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
                            fontSize: constraints.maxWidth <= 550 ? 18 : 35,
                            letterSpacing: 5,
                          ),
                        ),
                        const SizedBox(height: 10),
                       SelectableText(
                          'Desenvolvemos uma solução inovadora que simplifica o processo de vendas para lojistas de shopping, permitindo interações diretas com clientes através do WhatsApp. Essa ferramenta potencializa as vendas, oferecendo uma comunicação mais ágil e eficiente entre lojistas e consumidores.',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFFCAC9CC),
                            fontSize: constraints.maxWidth <= 550 ? 13 : 25,
                            letterSpacing: 5,
                          ),
                        ),
                        const SizedBox(height: 20),
                        SelectableText(
                          'Versão celular:',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                            fontSize: constraints.maxWidth <= 550 ? 13 : 25,
                            letterSpacing: 5,
                          ),
                        ),
                        ConstrainedBox(
                          constraints: BoxConstraints(
                            maxWidth: MediaQuery.sizeOf(context).width - 50,
                            maxHeight: 600,
                          ),
                          child: CarouselView(itemExtent: 300, children: [
                            Image.asset(
                              'assets/chat_mobile.png',
                              fit: BoxFit.fill,
                              height: 500,
                            ),
                            Image.asset(
                              'assets/home_mobile.png',
                              fit: BoxFit.fitHeight,
                              height: 500,
                              width: 500,
                            ),
                            Image.asset(
                              'assets/login_mobile.png',
                              fit: BoxFit.fitHeight,
                              height: 500,
                              width: 500,
                            ),
                          ]),
                        ),
                        const SizedBox(height: 20),
                         SelectableText(
                          'Versão web:',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                            fontSize: constraints.maxWidth <= 550 ? 13 : 25,
                            letterSpacing: 5,
                          ),
                        ),
                        ConstrainedBox(
                          constraints: BoxConstraints(
                            maxWidth: MediaQuery.sizeOf(context).width,
                            maxHeight: 600,
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: SizedBox(
                                  width: 950,
                                  child: Image.asset(
                                    'assets/chat_web.png',
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 20),
                              Expanded(
                                child: SizedBox(
                                  width: 950,
                                  child: Image.asset(
                                    'assets/home_web.png',
                                    fit: BoxFit.fill,
                                  ),
                                ),
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
