// -----------------------------------------------------------------------------
// Archivo principal de la aplicación Lector Global
// Archivo: main.dart
// Descripción: Configura el punto de entrada, tema, navegación inicial y control de sesión.
// Versión: 1.8
// Fecha: 23/04/2025 - Hora: 23:37 (202504232337)
// -----------------------------------------------------------------------------

import 'package:flutter/material.dart';
import 'screens/welcome_screen.dart';
import 'screens/auth/login_screen.dart';
import 'screens/auth/register_screen.dart';
import 'screens/dashboard_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() {
  runApp(const MyApp());
}

/// Clase principal de la aplicación
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
      home: const RootScreen(), // Control de navegación inicial
      routes: {
        '/login': (context) => const LoginScreen(),
        '/register': (context) => const RegisterScreen(),
        '/dashboard': (context) => const DashboardScreen(),
      },
    );
  }
}

/// Pantalla que redirige automáticamente según el estado de sesión
class RootScreen extends StatelessWidget {
  const RootScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          // Mientras se carga el estado de autenticación
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        } else if (snapshot.hasData) {
          // Usuario autenticado
          return const DashboardScreen();
        } else {
          // Usuario no autenticado
          return const WelcomeScreen();
        }
      },
    );
  }
}
