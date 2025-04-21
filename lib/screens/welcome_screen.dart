// --------------------------------------------------------------
// Pantalla de bienvenida para la aplicación Lector Global
// --------------------------------------------------------------

import 'package:flutter/material.dart';
import '../main.dart'; // Importamos MyHomePage

/// Widget de pantalla de bienvenida inicial
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
                // Navegar a la pantalla principal
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder:
                        (context) =>
                            const MyHomePage(title: 'Inicio de Lector Global'),
                  ),
                );
              },
              child: const Text('Comenzar'),
            ),
          ],
        ),
      ),
    );
  }
}
