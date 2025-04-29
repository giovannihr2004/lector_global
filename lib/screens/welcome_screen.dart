// -----------------------------------------------------------------------------
// Pantalla de bienvenida para la aplicación Lector Global
// Archivo: welcome_screen.dart
// Descripción: Pantalla inicial que presenta la app, con logotipo, autor y eslogan.
// Versión: 1.0.4 - Integración completa de traducción dinámica
// Fecha de última actualización: 28/04/2025 - 22:15 (Hora de Colombia)
// -----------------------------------------------------------------------------

import 'package:flutter/material.dart';
import 'auth/login_screen.dart'; // Importamos la pantalla de login
import 'package:provider/provider.dart'; // Para usar el LanguageProvider
import '../language_provider.dart'; // Importamos el LanguageProvider
import '../widgets/language_selector.dart'; // Importamos el selector de idioma
import 'package:flutter_gen/gen_l10n/app_localizations.dart'; // Importamos las traducciones

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[50],
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.welcome_title),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
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

                // Título principal
                Text(
                  AppLocalizations.of(context)!.welcome_title,
                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                  textAlign: TextAlign.center,
                ),

                const SizedBox(height: 16),

                // Eslogan oficial
                Text(
                  AppLocalizations.of(context)!.welcome_message,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.deepPurple,
                    height: 1.5,
                  ),
                ),

                const SizedBox(height: 24),

                // Autor y fecha
                Column(
                  children: [
                    Text(
                      AppLocalizations.of(context)!.developed_by,
                      style: const TextStyle(
                        fontSize: 14,
                        fontStyle: FontStyle.italic,
                        color: Colors.black45,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      AppLocalizations.of(context)!.version_info,
                      style: const TextStyle(fontSize: 13, color: Colors.black38),
                    ),
                    Text(
                      AppLocalizations.of(context)!.date_info,
                      style: const TextStyle(fontSize: 13, color: Colors.black38),
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
                    child: Text(
                      AppLocalizations.of(context)!.start_button,
                      style: const TextStyle(fontSize: 18, color: Colors.white),
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
