// ---------------------------------------------------------------------
// Pantalla de inicio de sesión para la aplicación Lector Global
// Versión 1.9 - Corrección de contexto en ScaffoldMessenger y mejoras visuales
// Fecha: 23/04/2025 - 23:59 (202504232359)
// ---------------------------------------------------------------------

import 'package:flutter/material.dart';
import 'package:lector_global/services/google_sign_in_service.dart'; // Importamos el servicio de Google
import 'register_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isLoading = false;

  void _loginUser() {
    if (_formKey.currentState!.validate()) {
      final messenger = ScaffoldMessenger.of(context);

      setState(() => _isLoading = true);

      final email = _emailController.text.trim();
      final password = _passwordController.text;

      Future.delayed(const Duration(seconds: 2), () {
        if (!mounted) return;
        setState(() => _isLoading = false);

        if (email == 'test@lector.com' && password == '123456') {
          messenger.showSnackBar(
            const SnackBar(content: Text('Inicio de sesión exitoso')),
          );
        } else {
          messenger.showSnackBar(
            const SnackBar(content: Text('Correo o contraseña incorrectos')),
          );
        }
      });
    }
  }

  Future<void> _signInWithGoogle() async {
    final messenger = ScaffoldMessenger.of(context);
    setState(() => _isLoading = true);

    final user = await GoogleSignInService.signInWithGoogle();

    if (!mounted) return;
    setState(() => _isLoading = false);

    if (user != null) {
      messenger.showSnackBar(
        SnackBar(content: Text('Bienvenido, ${user.displayName ?? "Usuario"}')),
      );
    } else {
      messenger.showSnackBar(
        const SnackBar(content: Text('No se pudo iniciar sesión con Google')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: Colors.deepPurple[50],
          appBar: AppBar(
            title: const Text('Iniciar sesión'),
            backgroundColor: Colors.deepPurple,
            foregroundColor: Colors.white,
          ),
          body: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    controller: _emailController,
                    decoration: const InputDecoration(
                      labelText: 'Correo electrónico',
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
                  const SizedBox(height: 12),
                  TextFormField(
                    controller: _passwordController,
                    decoration: const InputDecoration(labelText: 'Contraseña'),
                    obscureText: true,
                    validator: (value) {
                      if (value == null || value.length < 6) {
                        return 'Debe tener al menos 6 caracteres';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 24),
                  ElevatedButton(
                    onPressed: _isLoading ? null : _loginUser,
                    child: const Text('Ingresar'),
                  ),
                  const SizedBox(height: 16),
                  const Text('O inicia sesión con'),
                  const SizedBox(height: 12),
                  OutlinedButton.icon(
                    onPressed: _isLoading ? null : _signInWithGoogle,
                    icon: Image.asset('assets/google_logo.png', height: 20),
                    label: const Text('Google'),
                  ),
                  const SizedBox(height: 20),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
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
          ),
        ),

        // -------------------------------
        // Capa de carga animada (overlay)
        // -------------------------------
        if (_isLoading)
          Container(
            color: Colors.black.withAlpha((0.4 * 255).toInt()),
            child: const Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircularProgressIndicator(color: Colors.white),
                  SizedBox(height: 16),
                  Text(
                    'Iniciando sesión...',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }
}
