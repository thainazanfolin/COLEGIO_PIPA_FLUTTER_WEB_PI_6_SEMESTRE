import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart'; // Para os ícones de redes sociais
//import 'package:url_launcher/url_launcher.dart';
//import 'package:url_launcher/url_launcher_string.dart'; // Para abrir os links

// // Função para abrir URLs
//   void _launchURL(String url) async {
//     if (await canLaunchUrlString(url)) {
//       await canLaunchUrlString(url);
//     } else {
//       throw 'Could not launch $url';
//     }
//   }

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      color: Colors.white,
      child: const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Colégio Pipa | Todos os Direitos Reservados. 2024',
                style: TextStyle(
                  color: Colors.black87,
                ),
              ),
              SizedBox(width: 16), // Espaço entre texto e ícones
              //TRANFORMAR ICONES EM ICONBUTTON + LAUNCHURL COM OS LINKS
              FaIcon(FontAwesomeIcons.instagram, color: Colors.orange, size: 20),
              SizedBox(width: 16),
              FaIcon(FontAwesomeIcons.youtube, color: Colors.orange, size: 20),
              SizedBox(width: 16),
              FaIcon(FontAwesomeIcons.whatsapp, color: Colors.orange, size: 20),
            ],
          ),
          SizedBox(height: 8), // Espaço entre as linhas
          Text(
            '(xx) xxxx-xxxx',
            style: TextStyle(
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}
