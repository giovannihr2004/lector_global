// -----------------------------------------------------------------------------
// Pantalla de inicio (Splash Screen) de Lector Global
// Archivo: splash_screen.dart
// Descripción: Muestra el logo animado y redirige automáticamente.
<<<<<<< HEAD
// Versión: 1.0.0
// Fecha: 25/04/2025 - Hora: 01:35 (202504250135)
// -----------------------------------------------------------------------------

import 'package:flutter/material.dart';
import 'dart:async';
import 'login_screen.dart';
=======
// Versión: 1.1.0
// Fecha: 04/05/2025 - Hora: 19:10 (202505041910)
// -----------------------------------------------------------------------------

import 'package:flutter/material.dart';
import 'package:lector_global/screens/auth/login_screen.dart';
import 'dart:async';
>>>>>>> d67b3c5 (Versión estable de pantalla de inicio de sesión - Diseño limpio y funcional - 050520251722)

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

<<<<<<< HEAD
    // Controlador de animación
=======
>>>>>>> d67b3c5 (Versión estable de pantalla de inicio de sesión - Diseño limpio y funcional - 050520251722)
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    )..forward();

<<<<<<< HEAD
    // Escala del logo
=======
>>>>>>> d67b3c5 (Versión estable de pantalla de inicio de sesión - Diseño limpio y funcional - 050520251722)
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOutBack,
    );

<<<<<<< HEAD
    // Redirige luego de 3 segundos
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginScreen()),
      );
=======
    Timer(const Duration(seconds: 3), () {
      if (mounted) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const LoginScreen()),
        );
      }
>>>>>>> d67b3c5 (Versión estable de pantalla de inicio de sesión - Diseño limpio y funcional - 050520251722)
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

<<<<<<< HEAD
  // -------------------
  // Interfaz de usuario
  // -------------------
=======
>>>>>>> d67b3c5 (Versión estable de pantalla de inicio de sesión - Diseño limpio y funcional - 050520251722)
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
