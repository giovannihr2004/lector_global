// -----------------------------------------------------------------------------
// Pantalla de bienvenida para la aplicación Lector Global
// Archivo: welcome_screen.dart
// Descripción: Pantalla inicial que presenta la app y permite iniciar sesión.
// Versión: 1.2
// Fecha: 22/04/2025 - Hora: 23:45 (202504222345)
// -----------------------------------------------------------------------------

import 'package:flutter/material.dart';
import 'auth/login_screen.dart'; // Importamos la pantalla de login

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[50],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(
              horizontal: 32.0,
              vertical: 48.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Ícono de bienvenida
                Icon(
                  Icons.menu_book_rounded,
                  size: 100,
                  color: Colors.deepPurple.shade400,
                ),

                const SizedBox(height: 30),

                // Título
                const Text(
                  'Bienvenido a Lector Global',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                  textAlign: TextAlign.center,
                ),

                const SizedBox(height: 16),

                // Subtítulo
                const Text(
                  'Mejora tu comprensión lectora\ncon textos divertidos y desafiantes',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                    height: 1.5,
                  ),
                ),

                const SizedBox(height: 48),

                // Botón "Comenzar"
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple,
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      elevation: 3,
                    ),
                    child: const Text(
                      'Comenzar',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
