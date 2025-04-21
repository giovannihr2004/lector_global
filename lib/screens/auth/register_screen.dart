// -----------------------------------------------------------------------------
// Pantalla de Registro para la aplicación Lector Global
// Archivo: register_screen.dart
// Descripción: Permite a los usuarios registrarse mediante nombre, correo y contraseña.
// Versión: 1.1
// Fecha: 20/04/2025 - Hora: 20:13 (202420252013)
// -----------------------------------------------------------------------------

import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    final TextEditingController nameController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Crear cuenta'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Form(
          key: _formKey,

          // -----------------------------
          // Parte 1: Campos del formulario
          // -----------------------------
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Nombre completo'),
              TextFormField(
                controller: nameController,
                decoration: const InputDecoration(
                  hintText: 'Ingresa tu nombre',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor ingresa tu nombre';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),

              const Text('Correo electrónico'),
              TextFormField(
                controller: emailController,
                decoration: const InputDecoration(
                  hintText: 'correo@ejemplo.com',
                ),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor ingresa tu correo';
                  }
                  if (!value.contains('@') || !value.contains('.')) {
                    return 'Correo no válido';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),

              const Text('Contraseña'),
              TextFormField(
                controller: passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: 'Crea una contraseña',
                ),
                validator: (value) {
                  if (value == null || value.length < 6) {
                    return 'Debe tener al menos 6 caracteres';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 24),

              // -----------------------------
              // Parte 2: Botón de registro
              // -----------------------------
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // Aquí va la lógica para registrar al usuario
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Registrando usuario...')),
                      );
                    }
                  },
                  child: const Text('Registrarse'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
