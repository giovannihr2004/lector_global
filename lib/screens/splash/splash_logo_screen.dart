// -----------------------------------------------------------------------------
// Pantalla de presentación con logotipo centrado
// Archivo: splash_logo_screen.dart
// Descripción: Muestra el logo centrado y navega automáticamente después de 3s
// Versión: 1.0.0
// Fecha: 25/04/2025 - Hora: 00:15 (202504250015)
// -----------------------------------------------------------------------------

import 'package:flutter/material.dart';
import 'splash_text_screen.dart';

class SplashLogoScreen extends StatefulWidget {
  const SplashLogoScreen({super.key});

  @override
  State<SplashLogoScreen> createState() => _SplashLogoScreenState();
}

class _SplashLogoScreenState extends State<SplashLogoScreen> {
  @override
  void initState() {
    super.initState();
<<<<<<< HEAD
=======
    // Espera 3 segundos y navega automáticamente a la pantalla de texto de presentación
>>>>>>> d67b3c5 (Versión estable de pantalla de inicio de sesión - Diseño limpio y funcional - 050520251722)
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        PageRouteBuilder(
          pageBuilder: (_, __, ___) => const SplashTextScreen(),
          transitionsBuilder: (_, animation, __, child) {
            return FadeTransition(opacity: animation, child: child);
          },
          transitionDuration: const Duration(milliseconds: 800),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[50],
<<<<<<< HEAD
      body: Center(child: Image.asset('assets/images/logo1.png', height: 180)),
=======
      body: Center(
        child: Image.asset(
          'assets/images/logo1.png',
          height: 180,
        ),
      ),
>>>>>>> d67b3c5 (Versión estable de pantalla de inicio de sesión - Diseño limpio y funcional - 050520251722)
    );
  }
}
