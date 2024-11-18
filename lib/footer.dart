import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Column(
        children: [
          CircleAvatar(
            radius: 100,
            child: Image.asset('assets/logo.png'),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            width: constraints.maxWidth - 10,
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 1,
              ),
            ),
            child: Column(
              children: [
                const Text(
                  'Contato',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                InkWell(
                  onTap: _launchEmail,
                  child: const Text(
                    'Email: hericfreitas.empresa@gmail.com',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                InkWell(
                  onTap: whats,
                  child: const Text(
                    'Telefone: (16) 9 9174-2949',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    });
  }

  Future<void> whats() async {
    if (!await launchUrl(Uri.parse(
        "https://api.whatsapp.com/send?phone=5516991742949&text=Ol%C3%A1%20gostaria%20de%20fazer%20um%20or%C3%A7amento%20da%20minha%20ideia."))) {
      throw Exception();
    }
  }

  Future<void> _launchEmail() async {
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: 'hericfreitas.empresa@gmail.com',
      query:
          'subject=Quero um orçamento&body=Descreva com o maximo de detalhes a ideia do seu projeto',
    );

    await launchUrl(emailUri);
  }
}
