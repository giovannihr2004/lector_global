// -----------------------------------------------------------------------------
// Pantalla de inicio de sesión para Lector Global
// Archivo: login_screen.dart
// Descripción: Formulario de autenticación con correo, Google y Facebook.
// Versión: 1.1.0 - Incluye logotipo, eslogan, mejoras visuales y estructura profesional.
// Fecha: 24/04/2025 - Hora: 20:45 (202504242045)
// -----------------------------------------------------------------------------

import 'package:flutter/material.dart';
import 'register_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[50],
      appBar: AppBar(
        title: const Text('Iniciar sesión'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Logotipo oficial
                Image.asset('assets/images/logo1.png', height: 100),
                const SizedBox(height: 12),

                // Eslogan
                const Text(
                  'El viaje comienza con una página.',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.deepPurple,
                  ),
                ),
                const SizedBox(height: 32),

                // Campo correo
                TextField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    labelText: 'Correo electrónico, teléfono o usuario',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),

                // Campo contraseña con ícono de visibilidad
                TextField(
                  controller: passwordController,
                  obscureText: obscurePassword,
                  decoration: InputDecoration(
                    labelText: 'Contraseña',
                    border: const OutlineInputBorder(),
                    suffixIcon: IconButton(
                      icon: Icon(
                        obscurePassword
                            ? Icons.visibility_off
                            : Icons.visibility,
                      ),
                      onPressed: () {
                        setState(() {
                          obscurePassword = !obscurePassword;
                        });
                      },
                    ),
                  ),
                ),

                const SizedBox(height: 24),

                // Botón de ingresar
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple,
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text('Ingresar'),
                  ),
                ),

                const SizedBox(height: 16),

                // Botón Google
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton.icon(
                    icon: Image.asset('assets/images/google.png', height: 20),
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                    ),
                    label: const Text(
                      'Google',
                      style: TextStyle(color: Colors.black87),
                    ),
                  ),
                ),

                const SizedBox(height: 12),

                // Botón Facebook
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton.icon(
                    icon: Image.asset('assets/images/facebook.png', height: 20),
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                    ),
                    label: const Text(
                      'Facebook',
                      style: TextStyle(color: Colors.black87),
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                // Enlace a registro
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const RegisterScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    '¿No tienes cuenta? Regístrate aquí',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.deepPurple,
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                // Pie de página
                const Text(
                  'Al registrarte en Lector Global, aceptas nuestros Términos y Política de privacidad.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12, color: Colors.black45),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
