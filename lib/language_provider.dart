// 📅 Última actualización: 28/04/2025 - 21:45 (hora Colombia)
// Archivo: lib/language_provider.dart
// Descripción: Proveedor de idioma para Lector Global.

import 'package:flutter/material.dart';
import 'l10n/app_localizations.dart'; // Importamos la clase base
import 'l10n/intl_es.dart'; // Español
import 'l10n/intl_en.dart'; // Inglés

class LanguageProvider with ChangeNotifier {
  Locale _locale = const Locale('es', ''); // Idioma predeterminado
  late AppLocalizations _localizations;

  Locale get locale => _locale;
  AppLocalizations get localizations => _localizations;

  LanguageProvider() {
    _localizations = AppLocalizationsEs(); // Inicializamos en español
  }

  void changeLanguage(String languageCode) {
    if (languageCode == 'es') {
      _locale = const Locale('es', '');
      _localizations = AppLocalizationsEs();
    } else if (languageCode == 'en') {
      _locale = const Locale('en', '');
      _localizations = AppLocalizationsEn();
    } else {
      _locale = const Locale('es', '');
      _localizations = AppLocalizationsEs(); // Por defecto español
    }
    notifyListeners();
  }
}
