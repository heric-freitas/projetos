import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Services extends StatelessWidget {
  const Services({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 15, left: 30, bottom: 25),
            child: Text(
              'Serviços',
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Colors.white,
                fontSize: 68,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          if (constraints.maxWidth <= 1000) ...[
            Column(
              children: [
                Service(
                  whats: whats,
                  width: constraints.maxWidth,
                  title: 'Desenvolvimento do back-end',
                ),
                Service(
                  whats: whats,
                  width: constraints.maxWidth,
                  title: 'Desenvolvimento do front-end',
                ),
                Service(
                  whats: whats,
                  width: constraints.maxWidth,
                  title: 'Desenvolvimento de layouts',
                ),
              ],
            ),
          ],
          if (constraints.maxWidth > 1000) ...[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Service(
                  whats: whats,
                  width: constraints.maxWidth * .25,
                  title: 'Desenvolver o back-end',
                ),
                Service(
                  whats: whats,
                  width: constraints.maxWidth * .25,
                  title: 'Desenvolver o front-end',
                ),
                Service(
                  whats: whats,
                  width: constraints.maxWidth * .25,
                  title: 'Desenvolver layouts',
                ),
              ],
            ),
          ]
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
}

class Service extends StatelessWidget {
  final VoidCallback whats;
  final double width;
  final String title;
  const Service(
      {super.key,
      required this.whats,
      required this.width,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      padding: const EdgeInsets.all(50),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
          width: 2,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w100,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 5),
          const Divider(
            color: Colors.white,
            thickness: 2,
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                side: const BorderSide(color: Colors.white)),
            onPressed: whats,
            child: const Text(
              'Orçamento',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
