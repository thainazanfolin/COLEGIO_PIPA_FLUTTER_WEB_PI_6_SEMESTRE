import 'package:flutter/material.dart';
import 'navbar.dart';
import 'footer.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Navbar(), // Aqui está a navbar
      body: const Center(
        child: Text('Dashboard!'),
      ),
      bottomNavigationBar: Footer(), // Aqui está o footer
    );
  }
}
