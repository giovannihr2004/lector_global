// -----------------------------------------------------------------------------
// 📄 Archivo: dashboard_screen.dart
// 📝 Descripción: Pantalla principal con logout y botones accesibles
// 📅 Última actualización: 29/04/2025 - 23:55 (GMT-5)
// -----------------------------------------------------------------------------

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
        ),
      ),
    );
  }
}
