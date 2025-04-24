// -----------------------------------------------------------------------------
// Pantalla de inicio de sesión para Lector Global
// Archivo: login_screen.dart
// Descripción: Formulario de autenticación con validación, Google y Facebook.
// Versión: 1.1.4 - Validación de campos implementada.
// Fecha: 25/04/2025 - Hora: 01:15 (202504250115)
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
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool obscurePassword = true;

  void _submitLogin() {
    if (_formKey.currentState!.validate()) {
      // Aquí se colocará la lógica real de autenticación
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Autenticación exitosa (simulada)')),
      );
    }
  }

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
            child: Form(
              key: _formKey,
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
                  TextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      labelText: 'Correo electrónico, teléfono o usuario',
                      border: OutlineInputBorder(),
                    ),
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
                  const SizedBox(height: 20),

                  // Campo contraseña con ícono de visibilidad
                  TextFormField(
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
                    validator: (value) {
                      if (value == null || value.trim().length < 6) {
                        return 'Debe tener al menos 6 caracteres';
                      }
                      return null;
                    },
                  ),

                  const SizedBox(height: 24),

                  // Botón de ingresar
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: _submitLogin,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurple,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        elevation: 3,
                      ),
                      child: const Text(
                        'Ingresar',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),

                  const SizedBox(height: 16),

                  // Botón Google
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton.icon(
                      icon: Image.asset('assets/images/google.png', height: 20),
                      onPressed: () {
                        // Aquí se implementará la autenticación con Google
                      },
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
                      icon: Image.asset(
                        'assets/images/facebook.png',
                        height: 20,
                      ),
                      onPressed: () {
                        // Aquí se implementará la autenticación con Facebook
                      },
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

                  // Enlace a registro con mejor contraste
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
                        fontWeight: FontWeight.w600,
                        color: Colors.black87,
                        decoration: TextDecoration.underline,
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
      ),
    );
  }
}
