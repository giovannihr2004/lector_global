// --------------------------------------------------------------
// Pantalla de bienvenida para la aplicación Lector Global
// Última actualización: 2025-04-20 20:28
// --------------------------------------------------------------

import 'package:flutter/material.dart';
import 'auth/login_screen.dart'; // Importamos la pantalla de login

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
            // Ícono de bienvenida
            Icon(Icons.menu_book, size: 100, color: Colors.deepPurple),

            const SizedBox(height: 20),

            // Título de bienvenida
            const Text(
              'Bienvenido a Lector Global',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),

            // Subtítulo o descripción
            const Text(
              'Mejora tu comprensión lectora\ncon textos divertidos y desafiantes',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),

            const SizedBox(height: 40),

            // Botón para comenzar e ir a login
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const LoginScreen()),
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
