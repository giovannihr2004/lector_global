// -----------------------------------------------------------------------------
// Pantalla de prueba posterior al registro exitoso
// Archivo: test_success_screen.dart
// Descripción: Muestra un mensaje de éxito y permite regresar a las opciones.
<<<<<<< HEAD
// Versión: 1.0.0
// Fecha: 25/04/2025 - Hora: 00:34 (202504250034)
// -----------------------------------------------------------------------------

import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'register_screen.dart';
=======
// Versión: 1.2.0
// Fecha: 04/05/2025 - Hora: 18:42 (202505041842)
// -----------------------------------------------------------------------------

import 'package:flutter/material.dart';
import 'package:lector_global/screens/auth/login_screen.dart';
import 'package:lector_global/screens/auth/register_screen.dart';
>>>>>>> d67b3c5 (Versión estable de pantalla de inicio de sesión - Diseño limpio y funcional - 050520251722)

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
<<<<<<< HEAD
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (_) => const LoginScreen()),
=======
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginScreen()),
                    (Route<dynamic> route) => false,
>>>>>>> d67b3c5 (Versión estable de pantalla de inicio de sesión - Diseño limpio y funcional - 050520251722)
                  );
                },
                child: const Text('Volver al inicio de sesión'),
              ),
              const SizedBox(height: 12),
              OutlinedButton(
                onPressed: () {
<<<<<<< HEAD
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (_) => const RegisterScreen()),
=======
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => const RegisterScreen()),
                    (Route<dynamic> route) => false,
>>>>>>> d67b3c5 (Versión estable de pantalla de inicio de sesión - Diseño limpio y funcional - 050520251722)
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
