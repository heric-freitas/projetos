import 'dart:async';

import 'package:flutter/material.dart';

class Projects extends StatefulWidget {
  const Projects({super.key});

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  final ScrollController controller = ScrollController();
  late Timer _timer;
  late List<Project> list;
  late List<Project> listBase;

  @override
  void initState() {
    super.initState();
    listBase = [
      const Project(
        title: 'Vend.ai',
        description:
            'Desenvolvemos uma solução inovadora que simplifica o processo de vendas para lojistas de shopping, permitindo interações diretas com clientes através do WhatsApp. Essa ferramenta potencializa as vendas, oferecendo uma comunicação mais ágil e eficiente entre lojistas e consumidores.',
      ),
      const Project(
        title: 'Pagstar',
        description:
            'Após ter um aplicativo já lançado nas principais lojas de apps, lamentavelmente, o mesmo não recebeu uma boa aceitação inicial por parte dos usuários, com avaliações muito baixas. Diante dessa situação desafiadora, fui chamado e assumi o compromisso de resgatar esse aplicativo, revisitando seu design, funcionalidades e experiência do usuário, a fim de transformá-lo em uma solução verdadeiramente relevante e atraente para o público-alvo.',
      ),
      const Project(
        title: 'Albert Einstein',
        description:
            'Desenvolvimento de funcionalidades novas tanto no site quanto no aplicativo do hospital, tais quais posteriormente foram integrados com o aplicativo já existente.',
      ),
    ];
    list = [...listBase, ...listBase];
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _timer = Timer.periodic(const Duration(milliseconds: 40), _scrollList);
    });
  }

  void _scrollList(Timer timer) {
    if (controller.hasClients) {
      if (list.length == listBase.length * 4) {
        list.removeAt(listBase.length + 1);
      }
      final maxScroll = controller.position.maxScrollExtent;
      final currentScroll = controller.offset;
      const delta = 70.0; // Scroll amount

      controller.animateTo(
        currentScroll + delta,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeOut,
      );
      if (!(currentScroll < maxScroll - (maxScroll / 2))) {
        setState(() {
          list.addAll([...listBase, ...listBase]);
        });
      }
    }
  }

  @override
  void dispose() {
    _timer.cancel();
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Padding(
              padding:
                  EdgeInsets.only(top: 15, left: 30, bottom: 25, right: 30),
              child: Text(
                'Projetos',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 68,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: constraints.maxWidth <= 300
                    ? 600
                    : constraints.maxWidth <= 550
                        ? 500
                        : 425,
              ),
              child: ListView(
                itemExtent: 600,
                padding: EdgeInsets.symmetric(
                    horizontal: constraints.maxWidth <= 550 ? 10 : 50),
                scrollDirection: Axis.horizontal,
                controller: controller,
                children: list,
              ),
            ),
          ],
        );
      },
    );
  }
}

class Project extends StatelessWidget {
  final String title;
  final String description;
  const Project({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      padding: const EdgeInsets.all(25),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 2,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            textAlign: TextAlign.start,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 26,
              fontWeight: FontWeight.w900,
            ),
          ),
          const SizedBox(height: 15),
          Text(
            description,
            textAlign: TextAlign.justify,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
