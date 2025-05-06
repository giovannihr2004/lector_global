// -----------------------------------------------------------------------------
// 📄 Archivo: language_selector.dart
// 📍 Ubicación: lib/widgets/language_selector.dart
// 📝 Descripción: Selector de idioma profesional para Lector Global
// 📅 Última actualización: 06/05/2025 - 02:10 (Hora de Colombia)
// -----------------------------------------------------------------------------

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../language_provider.dart'; // ✅ Importación correcta

class LanguageSelector extends StatelessWidget {
  const LanguageSelector({super.key}); // ✅ Corrección profesional aplicada

  @override
  Widget build(BuildContext context) {
    final languageProvider = Provider.of<LanguageProvider>(
      context,
      listen: true,
    );

    final Map<String, String> languageNames = {
      'es': 'Español',
      'en': 'English',
      'fr': 'Français',
      'it': 'Italiano',
      'pt': 'Português',
      'de': 'Deutsch',
      'ru': 'Русский',
      'ja': '日本語',
      'zh': '中文',
      'ar': 'العربية', // ✅ Árabe agregado
    };

    // ✅ Protección total contra valores vacíos o nulos
    final selectedLanguageCode =
        (languageProvider.locale.languageCode.isNotEmpty)
            ? languageProvider.locale.languageCode
            : 'es';

    return DropdownButton<String>(
      value:
          languageNames.containsKey(selectedLanguageCode)
              ? selectedLanguageCode
              : 'es', // ✅ Garantiza siempre un valor válido
      icon: const Icon(Icons.language, color: Colors.deepPurple),
      underline: Container(),
      onChanged: (String? newLanguageCode) {
        if (newLanguageCode != null) {
          languageProvider.changeLanguage(newLanguageCode); // ✅ Cambio correcto
        }
      },
      items:
          languageNames.entries.map((entry) {
            return DropdownMenuItem<String>(
              value: entry.key,
              child: Text(entry.value),
            );
          }).toList(),
    );
  }
}
