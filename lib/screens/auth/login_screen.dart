// -----------------------------------------------------------------------------
// 📄 Archivo: login_screen.dart
// 📍 Ubicación: lib/screens/auth/login_screen.dart
// 📝 Descripción: Pantalla de inicio de sesión elegante, funcional y accesible.
// 📅 Última actualización: 29/04/2025 - 21:28 (GMT-5)
// -----------------------------------------------------------------------------

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool _obscureText = true;

  void _login(BuildContext context) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text,
      );
      Navigator.pushReplacementNamed(context, '/dashboard');
    } catch (e) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Error al iniciar sesión: $e')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Iniciar sesión')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 24),

            // Logo central
            SizedBox(
              height: 120,
              child: Image.asset("assets/images/logo1.png"),
            ),

            const SizedBox(height: 12),

            const Text(
              "El viaje comienza con una página.",
              style: TextStyle(
                fontSize: 16,
                color: Colors.deepPurple,
                fontWeight: FontWeight.w500,
              ),
            ),

            const SizedBox(height: 24),

            TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: 'Correo electrónico, teléfono o usuario',
                prefixIcon: const Icon(Icons.email, color: Colors.deepPurple),
                border: const OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 16),

            TextField(
              controller: passwordController,
              obscureText: _obscureText,
              decoration: InputDecoration(
                labelText: 'Contraseña',
                prefixIcon: const Icon(Icons.lock, color: Colors.deepPurple),
                suffixIcon: IconButton(
                  icon: Icon(
                    _obscureText ? Icons.visibility : Icons.visibility_off,
                    color: Colors.deepPurple,
                  ),
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                ),
                border: const OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 24),

            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () => _login(context),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  foregroundColor: Colors.white,
                  shadowColor: Colors.black54,
                  elevation: 6,
                  textStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text('Ingresar'),
              ),
            ),

            const SizedBox(height: 24),

            SizedBox(
              width: double.infinity,
              height: 48,
              child: OutlinedButton.icon(
                onPressed: () {
                  // Por implementar
                },
                icon: Image.asset("assets/images/google.png", height: 24),
                label: const Text('Google'),
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Colors.deepPurple),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 12),

            SizedBox(
              width: double.infinity,
              height: 48,
              child: OutlinedButton.icon(
                onPressed: () {
                  // Por implementar
                },
                icon: Image.asset("assets/images/facebook.png", height: 24),
                label: const Text('Facebook'),
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Colors.deepPurple),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 24),

            Align(
              alignment: Alignment.center,
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/register');
                },
                child: const Text.rich(
                  TextSpan(
                    text: '¿No tienes cuenta? ',
                    style: TextStyle(color: Colors.black87),
                    children: [
                      TextSpan(
                        text: 'Regístrate aquí',
                        style: TextStyle(
                          color: Colors.deepPurple,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              "Al registrarte en Lector Global, aceptas nuestros Términos y Política de privacidad.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 11, color: Colors.black54),
            ),
          ],
        ),
      ),
    );
  }
}
