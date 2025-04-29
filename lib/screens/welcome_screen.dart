// -----------------------------------------------------------------------------
// Pantalla de bienvenida para la aplicación Lector Global
// Archivo: welcome_screen.dart
// Descripción: Pantalla inicial que presenta la app, con logotipo, autor y eslogan.
// Versión: 1.0.3 - Corrección de importación de LanguageProvider y LanguageSelector
// Fecha de última actualización: 27/04/2025 - 20:45 (Hora de Colombia)
// -----------------------------------------------------------------------------

import 'package:flutter/material.dart';
import 'auth/login_screen.dart'; // Importamos la pantalla de login
import 'package:provider/provider.dart'; // Para usar el LanguageProvider
import '../language_provider.dart'; // Importamos el LanguageProvider
import '../widgets/language_selector.dart'; // Importamos el selector de idioma

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[50],
      appBar: AppBar(
        title: const Text('Bienvenido a Lector Global'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: LanguageSelector(), // Selector de idioma en el AppBar
          ),
        ],
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(
              horizontal: 32.0,
              vertical: 48.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Logotipo oficial
                Image.asset(
                  'assets/images/logo1.png',
                  height: 120,
                  fit: BoxFit.contain,
                ),

                const SizedBox(height: 30),

                // Línea 1 del título
                const Text(
                  'Bienvenido a',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                  textAlign: TextAlign.center,
                ),

                // Línea 2 del título
                const Text(
                  'Lector Global',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                  textAlign: TextAlign.center,
                ),

                const SizedBox(height: 16),

                // Eslogan oficial (usando traducción)
                Consumer<LanguageProvider>(
                  builder: (context, languageProvider, child) {
                    return Text(
                      languageProvider.localizations.translate('description') ??
                          'El viaje comienza con una página.',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.deepPurple,
                        height: 1.5,
                      ),
                    );
                  },
                ),

                const SizedBox(height: 24),

                // Autor y fecha
                const Column(
                  children: [
                    Text(
                      'Desarrollado por Jhovani Holguín Rojas',
                      style: TextStyle(
                        fontSize: 14,
                        fontStyle: FontStyle.italic,
                        color: Colors.black45,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Versión: 1.0.0',
                      style: TextStyle(fontSize: 13, color: Colors.black38),
                    ),
                    Text(
                      'Fecha: 23 de abril de 2025',
                      style: TextStyle(fontSize: 13, color: Colors.black38),
                    ),
                  ],
                ),

                const SizedBox(height: 32),

                // Botón "Comenzar"
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple,
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      elevation: 3,
                    ),
                    child: const Text(
                      'Comenzar',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
