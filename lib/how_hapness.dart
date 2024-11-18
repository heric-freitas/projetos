import 'package:flutter/material.dart';

class HowHapness extends StatelessWidget {
  const HowHapness({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 15, left: 30, bottom: 25),
            child: Text(
              'O que fazemos?',
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Colors.black,
                fontSize: 68,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 15, left: 30, bottom: 25),
            child: Text(
              'Impacto e Eficiência',
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 5),
            width: constraints.maxWidth - 10,
            padding: const EdgeInsets.all(25),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 1,
              ),
            ),
            child: constraints.maxWidth <= 1000
                ? const Column(
                  mainAxisSize: MainAxisSize.min,
                    children: [
                      HowHapnessTile(
                        title: 'Apps Móveis',
                        description:
                            'Desenvolvemos aplicativos móveis sob medida, garantindo uma experiência única para os usuários. Nossa equipe especializada trabalha para transformar suas ideias em soluções práticas e inovadoras, atendendo às necessidades específicas do seu negócio.',
                      ),
                      SizedBox(height: 30),
                      HowHapnessTile(
                        title: 'Webapps',
                        description: 'Criamos webapps interativos e responsivos, permitindo que sua empresa se destaque online. Nossas soluções web são projetadas para oferecer uma experiência atraente aos usuários, combinando design criativo e funcionalidades avançadas.',
                      ),
                      SizedBox(height: 30),
                      HowHapnessTile(
                        title: 'Aplicativos para Computadores',
                        description: 'Além dos dispositivos móveis e web, desenvolvemos aplicativos para computadores de alto desempenho. Nossas soluções visam otimizar processos e aumentar a produtividade, proporcionando uma experiência intuitiva e eficaz aos usuários.',
                      ),
                    ],
                  )
                : const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      HowHapnessTile(
                        title: 'Apps Móveis',
                        description:
                            'Desenvolvemos aplicativos móveis sob medida, garantindo uma experiência única para os usuários. Nossa equipe especializada trabalha para transformar suas ideias em soluções práticas e inovadoras, atendendo às necessidades específicas do seu negócio.',
                      ),
                      SizedBox(width: 300),
                      HowHapnessTile(
                        title: 'Webapps',
                        description: 'Criamos webapps interativos e responsivos, permitindo que sua empresa se destaque online. Nossas soluções web são projetadas para oferecer uma experiência atraente aos usuários, combinando design criativo e funcionalidades avançadas.',
                      ),
                      SizedBox(width: 300),
                      HowHapnessTile(
                        title: 'Aplicativos para Computadores',
                        description: 'Além dos dispositivos móveis e web, desenvolvemos aplicativos para computadores de alto desempenho. Nossas soluções visam otimizar processos e aumentar a produtividade, proporcionando uma experiência intuitiva e eficaz aos usuários.',
                      ),
                    ],
                  ),
          ),
        ],
      );
    });
  }
}

class HowHapnessTile extends StatelessWidget {
  final String title;
  final String description;
  const HowHapnessTile({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
          const SizedBox(height: 10),
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
