// -----------------------------------------------------------------------------
// Pantalla principal (Dashboard) para la aplicación Lector Global
// Archivo: dashboard_screen.dart
// Descripción: Muestra el menú principal una vez el usuario ha iniciado sesión.
// Versión: 1.0
// Fecha: 23/04/2025 - Hora: 20:56 (202504232056)
// -----------------------------------------------------------------------------

import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Panel principal'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // -------------------------------
            // Título de bienvenida al usuario
            // -------------------------------
            const Text(
              '¡Bienvenido a Lector Global!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 12),

            const Text(
              'Selecciona una opción para comenzar:',
              style: TextStyle(fontSize: 16),
            ),

            const SizedBox(height: 32),

            // -------------------------------
            // Botones de navegación inicial
            // -------------------------------

            // Ejemplo: Lecciones
            ElevatedButton.icon(
              onPressed: () {
                // Navegar a la sección de lecciones (más adelante)
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Sección de lecciones próximamente'),
                  ),
                );
              },
              icon: const Icon(Icons.menu_book),
              label: const Text('Lecciones'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
                padding: const EdgeInsets.symmetric(
                  vertical: 16,
                  horizontal: 24,
                ),
              ),
            ),

            const SizedBox(height: 16),

            // Ejemplo: Progreso
            ElevatedButton.icon(
              onPressed: () {
                // Navegar a la sección de progreso (más adelante)
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Sección de progreso próximamente'),
                  ),
                );
              },
              icon: const Icon(Icons.show_chart),
              label: const Text('Mi progreso'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
                padding: const EdgeInsets.symmetric(
                  vertical: 16,
                  horizontal: 24,
                ),
              ),
            ),

            const SizedBox(height: 16),

            // Ejemplo: Cerrar sesión
            ElevatedButton.icon(
              onPressed: () {
                Navigator.pop(context); // Volver al login
              },
              icon: const Icon(Icons.logout),
              label: const Text('Cerrar sesión'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.redAccent,
                padding: const EdgeInsets.symmetric(
                  vertical: 16,
                  horizontal: 24,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
