// lib/components/navbar.dart

import 'package:flutter/material.dart';

class Navbar extends StatelessWidget implements PreferredSizeWidget {
  final String? profileImageUrl;

  const Navbar({this.profileImageUrl});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.orange, // Cor laranja do Flutter
      elevation: 0, // Remove a sombra abaixo da AppBar
      title: Padding(
        padding: const EdgeInsets.only(left: 8.0, top: 5.0, bottom: 5.0), // Adiciona padding à esquerda do logo
        child: Image.asset(
          '../../assets/images/pipa-negativo.png',
          height: 60, // Ajuste conforme necessário
        ),
      ),
      actions: [
        const Padding( //TIRAR O CONST E COLOCAR FOTO DO PERFIL E CONDICIONAL - SE NAO TIVER FOTO, MOSTRAR PADRAO
          padding: EdgeInsets.only(right: 8.0), // Espaçamento à direita
          child: CircleAvatar(
            radius: 18,
            backgroundImage: AssetImage('assets/images/user-flavia.png'), // Imagem padrão caso não haja URL
          ),
        ),
        const SizedBox(width: 20),
        IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            // Ação do menu hamburguer
            Scaffold.of(context).openEndDrawer();
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
