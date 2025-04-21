// --------------------------------------------------------------
// Pantalla de inicio de sesión para la aplicación Lector Global
// --------------------------------------------------------------

import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Iniciar Sesión')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Campo de texto para el correo electrónico
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Correo electrónico',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 16),

            // Campo de texto para la contraseña
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Contraseña',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 24),

            // Botón para iniciar sesión
            ElevatedButton(
              onPressed: () {
                // Aquí se validará el formulario e iniciará sesión
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Iniciando sesión...')),
                );
              },
              child: const Text('Ingresar'),
            ),

            const SizedBox(height: 12),

            // Texto con opción para registrarse
            TextButton(
              onPressed: () {
                // Aquí se navega a la pantalla de registro
              },
              child: const Text('¿No tienes cuenta? Regístrate'),
            ),
          ],
        ),
      ),
    );
  }
}
