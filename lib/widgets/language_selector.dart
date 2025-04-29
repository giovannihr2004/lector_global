// 📅 Última actualización: 29/04/2025 - 00:15 (Hora de Colombia)
// Widget: Selector de Idioma para Lector Global - Sin idioma coreano ('ko')

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../language_provider.dart';

class LanguageSelector extends StatelessWidget {
  const LanguageSelector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final languageNames = {
      'es': 'Español',
      'en': 'English',
      'fr': 'Français',
      'it': 'Italiano',
      'pt': 'Português',
      'de': 'Deutsch',
      'ru': 'Русский',
      'ja': '日本語',
      'zh': '中文',
    };

    return DropdownButton<String>(
      value: context.watch<LanguageProvider>().locale.languageCode,
      items:
          languageNames.entries.map((entry) {
            return DropdownMenuItem<String>(
              value: entry.key,
              child: Text(entry.value),
            );
          }).toList(),
      onChanged: (String? newValue) {
        if (newValue != null) {
          context.read<LanguageProvider>().changeLanguage(newValue);
        }
      },
    );
  }
}
