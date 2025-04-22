// -----------------------------------------------------------------------------
// Pantalla de Registro para la aplicación Lector Global
// Archivo: register_screen.dart
// Descripción: Permite a los usuarios registrarse mediante nombre, correo y contraseña.
// Versión: 1.5
// Fecha: 22/04/2025 - Hora: 23:05 (202504222305)
// -----------------------------------------------------------------------------

import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _isLoading = false;

  void _registerUser() {
    if (_formKey.currentState!.validate()) {
      setState(() => _isLoading = true);

      // Simulación de registro
      Future.delayed(const Duration(seconds: 2), () {
        setState(() => _isLoading = false);

        final name = _nameController.text.trim();
        final email = _emailController.text.trim();

        print('Usuario registrado: $name - $email');

        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Usuario registrado exitosamente')),
        );

        Navigator.pop(context); // Vuelve a la pantalla de login
      });
    }
  }

  @override
  Widget build(BuildContext context) {
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
                controller: _nameController,
                decoration: const InputDecoration(
                  hintText: 'Ingresa tu nombre',
                ),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Por favor ingresa tu nombre';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),

              const Text('Correo electrónico'),
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(
                  hintText: 'correo@ejemplo.com',
                ),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
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
                controller: _passwordController,
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
                  onPressed: _isLoading ? null : _registerUser,
                  child:
                      _isLoading
                          ? const SizedBox(
                            height: 16,
                            width: 16,
                            child: CircularProgressIndicator(strokeWidth: 2),
                          )
                          : const Text('Registrarse'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
