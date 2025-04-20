// --------------------------------------------------------------
// Pantalla de bienvenida para la aplicación Lector Global
// --------------------------------------------------------------

import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[50],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.menu_book, size: 100, color: Colors.deepPurple),
            const SizedBox(height: 20),
            const Text(
              'Bienvenido a Lector Global',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'Mejora tu comprensión lectora\ncon textos divertidos y desafiantes',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                // Aquí después navegaremos a la siguiente pantalla
              },
              child: const Text('Comenzar'),
            ),
          ],
        ),
      ),
    );
  }
}
