// -----------------------------------------------------------------------------
// Pantalla de bienvenida para la aplicación Lector Global
// Archivo: welcome_screen.dart
// Descripción: Pantalla inicial que presenta la app y permite iniciar sesión.
// Versión: 1.0.0 - Versión pública. Autor, fecha y título actualizados.
// Fecha: 23/04/2025 - Hora: 17:10 (202504231710)
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

                // Línea 1 del título
                const Text(
                  'Bienvenido a',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                  textAlign: TextAlign.center,
                ),

                // Línea 2 del título
                const Text(
                  'Lector Global',
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

                const SizedBox(height: 24),

                // Autor y fecha
                const Column(
                  children: [
                    Text(
                      'Desarrollado por Jhovani Holguín Rojas',
                      style: TextStyle(
                        fontSize: 14,
                        fontStyle: FontStyle.italic,
                        color: Colors.black45,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Versión: 1.0.0',
                      style: TextStyle(fontSize: 13, color: Colors.black38),
                    ),
                    Text(
                      'Fecha: 23 de abril de 2025',
                      style: TextStyle(fontSize: 13, color: Colors.black38),
                    ),
                  ],
                ),

                const SizedBox(height: 32),

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
