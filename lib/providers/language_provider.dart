// 📅 Última actualización: 27/04/2025 - 16:41 (hora Colombia)
import 'package:flutter/material.dart';

// Importamos las clases de localización específicas para cada idioma
import 'l10n/intl_es.dart'; // Español
import 'l10n/intl_en.dart'; // Inglés
import 'l10n/intl_fr.dart'; // Francés
import 'l10n/intl_it.dart'; // Italiano
import 'l10n/intl_pt.dart'; // Portugués
import 'l10n/intl_de.dart'; // Alemán
import 'l10n/intl_ru.dart'; // Ruso
import 'l10n/intl_ja.dart'; // Japonés
import 'l10n/intl_zh.dart'; // Chino
import 'l10n/intl_ar.dart'; // Árabe

// Definimos una clase base para las traducciones
abstract class AppLocalizations {
  String get welcome;
  // Aquí irán todas las claves que necesites traducir
}

class LanguageProvider with ChangeNotifier {
  Locale _locale = Locale('es', ''); // Idioma predeterminado: español
  late AppLocalizations _localizations;

  Locale get locale => _locale;
  AppLocalizations get localizations => _localizations;

  LanguageProvider() {
    _localizations = AppLocalizationsEs(); // Inicializar con español
  }

  void changeLanguage(String languageCode) {
    if (languageCode == 'es') {
      _locale = Locale('es', '');
      _localizations = AppLocalizationsEs();
    } else if (languageCode == 'en') {
      _locale = Locale('en', '');
      _localizations = AppLocalizationsEn();
    } else if (languageCode == 'fr') {
      _locale = Locale('fr', '');
      _localizations = AppLocalizationsFr();
    } else if (languageCode == 'it') {
      _locale = Locale('it', '');
      _localizations = AppLocalizationsIt();
    } else if (languageCode == 'pt') {
      _locale = Locale('pt', '');
      _localizations = AppLocalizationsPt();
    } else if (languageCode == 'de') {
      _locale = Locale('de', '');
      _localizations = AppLocalizationsDe();
    } else if (languageCode == 'ru') {
      _locale = Locale('ru', '');
      _localizations = AppLocalizationsRu();
    } else if (languageCode == 'ja') {
      _locale = Locale('ja', '');
      _localizations = AppLocalizationsJa();
    } else if (languageCode == 'zh') {
      _locale = Locale('zh', '');
      _localizations = AppLocalizationsZh();
    } else if (languageCode == 'ar') {
      _locale = Locale('ar', '');
      _localizations = AppLocalizationsAr();
    }
    notifyListeners();
  }
}
