// -----------------------------------------------------------------------------
// Pantalla de prueba posterior al registro exitoso
// Archivo: test_success_screen.dart
// Descripción: Muestra un mensaje de éxito y permite regresar a las opciones.
// Versión: 1.0.0
// Fecha: 25/04/2025 - Hora: 00:34 (202504250034)
// -----------------------------------------------------------------------------

import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'register_screen.dart';

class TestSuccessScreen extends StatelessWidget {
  const TestSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[50],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.check_circle_outline,
                size: 80,
                color: Colors.green,
              ),
              const SizedBox(height: 24),
              const Text(
                '¡Registro exitoso!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Puedes regresar a las opciones de registro o iniciar sesión.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.black54),
              ),
              const SizedBox(height: 32),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (_) => const LoginScreen()),
                  );
                },
                child: const Text('Volver al inicio de sesión'),
              ),
              const SizedBox(height: 12),
              OutlinedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (_) => const RegisterScreen()),
                  );
                },
                child: const Text('Volver al registro'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
