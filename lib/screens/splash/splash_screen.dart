// -----------------------------------------------------------------------------
// Pantalla de inicio (Splash Screen) de Lector Global
// Archivo: splash_screen.dart
// Descripción: Muestra el logo animado y redirige automáticamente.
// Versión: 1.0.0
// Fecha: 25/04/2025 - Hora: 01:35 (202504250135)
// -----------------------------------------------------------------------------

import 'package:flutter/material.dart';
import 'dart:async';
import 'login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    // Controlador de animación
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    )..forward();

    // Escala del logo
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOutBack,
    );

    // Redirige luego de 3 segundos
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginScreen()),
      );
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  // -------------------
  // Interfaz de usuario
  // -------------------
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[50],
      body: Center(
        child: ScaleTransition(
          scale: _animation,
          child: Image.asset('assets/images/logo1.png', height: 160),
        ),
      ),
    );
  }
}
