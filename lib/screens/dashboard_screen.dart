// -----------------------------------------------------------------------------
// 📄 Archivo: dashboard_screen.dart
<<<<<<< HEAD
// 📝 Descripción: Pantalla principal con logout y botones accesibles
// 📅 Última actualización: 29/04/2025 - 23:55 (GMT-5)
=======
// 📍 Ubicación: lib/screens/dashboard_screen.dart
// 📝 Descripción: Pantalla principal con saludo personalizado y logout real.
// 📅 Última actualización: 29/04/2025 - 17:49 (GMT-5)
>>>>>>> d67b3c5 (Versión estable de pantalla de inicio de sesión - Diseño limpio y funcional - 050520251722)
// -----------------------------------------------------------------------------

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
<<<<<<< HEAD
=======
import 'package:flutter_gen/gen_l10n/app_localizations.dart'; // Para traducciones
>>>>>>> d67b3c5 (Versión estable de pantalla de inicio de sesión - Diseño limpio y funcional - 050520251722)

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    final user = FirebaseAuth.instance.currentUser;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Panel principal'),
        actions: [
          TextButton.icon(
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
              Navigator.pushReplacementNamed(context, '/login');
            },
            icon: const Icon(Icons.logout, color: Colors.white),
            label: const Text('Salir', style: TextStyle(color: Colors.white)),
          ),
        ],
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Bienvenido, ${user?.email ?? 'Usuario'}',
              style: const TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            const Text(
              'Comienza tu viaje lector aquí',
              style: TextStyle(fontSize: 14, color: Colors.black54),
            ),
            const SizedBox(height: 32),

            ElevatedButton.icon(
              onPressed: () {
                // Acción futura
              },
              icon: const Icon(Icons.menu_book),
              label: const Text('Lecciones'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
                foregroundColor: Colors.white,
                minimumSize: const Size(180, 48),
              ),
            ),
            const SizedBox(height: 16),

            ElevatedButton.icon(
              onPressed: () {
                // Acción futura
              },
              icon: const Icon(Icons.show_chart),
              label: const Text('Mi progreso'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
                foregroundColor: Colors.white,
                minimumSize: const Size(180, 48),
              ),
            ),
          ],
=======
    // Obtener el usuario actual
    final user = FirebaseAuth.instance.currentUser;
    final String userName =
        user?.displayName ??
        user?.email ??
        'Usuario'; // Usar displayName si está disponible

    // Acceso a traducciones
    final localizations = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: Text(localizations.dashboardTitle),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            tooltip: localizations.logout,
            icon: const Icon(Icons.logout),
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
              // Espera a que la sesión se cierre y luego redirige al login
              Future.delayed(Duration.zero, () {
                Navigator.pushReplacementNamed(context, '/login');
              });
            },
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Saludo personalizado con el nombre del usuario
              Text(
                '${localizations.welcome}, $userName', // Mostrar nombre si está disponible, o correo si no
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 16),

              Text(
                localizations.startYourReadingJourney,
                style: const TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 40),

              // Botón: Lecciones
              ElevatedButton.icon(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(localizations.lessonsComingSoon)),
                  );
                },
                icon: const Icon(Icons.menu_book),
                label: Text(localizations.lessons),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  padding: const EdgeInsets.symmetric(
                    vertical: 16,
                    horizontal: 24,
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Botón: Progreso
              ElevatedButton.icon(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(localizations.progressComingSoon)),
                  );
                },
                icon: const Icon(Icons.show_chart),
                label: Text(localizations.myProgress),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  padding: const EdgeInsets.symmetric(
                    vertical: 16,
                    horizontal: 24,
                  ),
                ),
              ),
            ],
          ),
>>>>>>> d67b3c5 (Versión estable de pantalla de inicio de sesión - Diseño limpio y funcional - 050520251722)
        ),
      ),
    );
  }
}
