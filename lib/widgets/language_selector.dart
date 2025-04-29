// 📅 Última actualización: 27/04/2025 - 21:30 (Hora de Colombia)
// Widget: Selector de Idioma para Lector Global

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../language_provider.dart';

class LanguageSelector extends StatelessWidget {
  const LanguageSelector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: context.read<LanguageProvider>().locale.languageCode,
      items: const [
        DropdownMenuItem(value: 'es', child: Text('Español')),
        DropdownMenuItem(value: 'en', child: Text('English')),
      ],
      onChanged: (String? newValue) {
        if (newValue != null) {
          context.read<LanguageProvider>().changeLanguage(newValue);
        }
      },
    );
  }
}
