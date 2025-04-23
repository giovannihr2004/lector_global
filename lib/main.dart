// -----------------------------------------------------------------------------
// Archivo principal de la aplicación Lector Global
// Archivo: main.dart
// Descripción: Configura el punto de entrada, tema, y navegación inicial.
// Versión: 1.7
// Fecha: 23/04/2025 - Hora: 22:58 (202504232258)
// -----------------------------------------------------------------------------

import 'package:flutter/material.dart';
import 'screens/welcome_screen.dart';
import 'screens/auth/login_screen.dart';
import 'screens/auth/register_screen.dart';

void main() {
  runApp(const MyApp());
}

/// Clase principal de la aplicación Lector Global
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lector Global',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const WelcomeScreen(), // Pantalla inicial
      routes: {
        '/login': (context) => const LoginScreen(),
        '/register': (context) => const RegisterScreen(),
      },
    );
  }
}
