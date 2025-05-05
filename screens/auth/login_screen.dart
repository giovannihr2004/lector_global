<<<<<<< HEAD
// ---------------------------------------------------------------------
// Pantalla de inicio de sesión para la aplicación Lector Global
// Fecha: 20/04/2025 - 20:25
// ---------------------------------------------------------------------

import 'package:flutter/material.dart';
import 'register_screen.dart';
=======
// -----------------------------------------------------------------------------
// Pantalla de inicio de sesión para la aplicación Lector Global
// Archivo: login_screen.dart
// Descripción: Permite a los usuarios iniciar sesión o ir al registro.
// Versión: 1.1.0
// Fecha: 04/05/2025 - Hora: 18:50 (202505041850)
// -----------------------------------------------------------------------------

import 'package:flutter/material.dart';
import 'package:lector_global/screens/auth/register_screen.dart';
>>>>>>> d67b3c5 (Versión estable de pantalla de inicio de sesión - Diseño limpio y funcional - 050520251722)

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[50],
      appBar: AppBar(
        title: const Text('Iniciar sesión'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TextField(
              decoration: InputDecoration(labelText: 'Correo electrónico'),
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 12),
            const TextField(
              decoration: InputDecoration(labelText: 'Contraseña'),
              obscureText: true,
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                // Aquí se validará el formulario más adelante
              },
              child: const Text('Ingresar'),
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {
<<<<<<< HEAD
                // Navegar a la pantalla de registro
                Navigator.push(
=======
                Navigator.pushReplacement(
>>>>>>> d67b3c5 (Versión estable de pantalla de inicio de sesión - Diseño limpio y funcional - 050520251722)
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RegisterScreen(),
                  ),
                );
              },
              child: const Text('¿No tienes cuenta? Regístrate aquí'),
            ),
          ],
        ),
      ),
    );
  }
}
