import 'package:flutter/material.dart';
import 'package:portifolio/service.dart';
import 'package:url_launcher/url_launcher.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          color: Colors.black,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 50),
              const Text(
                'Bem-Vindo à HFF Solutions',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'Fazemos suas ideias se tornarem realidade.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: constraints.maxWidth <= 550 ? 30 : 90,
                ),
              ),
              const SizedBox(height: 30),
              Image.asset(
                'assets/equipe.jpg',
                width: constraints.maxWidth,
                height: constraints.maxWidth <= 550 ? 200 : 800,
                fit: BoxFit.fitWidth,
              ),
              const SizedBox(height: 30),
              const Divider(
                color: Colors.white,
                thickness: 3,
              ),
              const Services(),
              const SizedBox(height: 30),
            ],
          ),
        );
      }
    );
  }

  Future<void> whats() async {
    if (!await launchUrl(Uri.parse(
        "https://api.whatsapp.com/send?phone=5516991742949&text=Ol%C3%A1%20gostaria%20de%20fazer%20um%20or%C3%A7amento%20da%20minha%20ideia."))) {
      throw Exception();
    }
  }
}
