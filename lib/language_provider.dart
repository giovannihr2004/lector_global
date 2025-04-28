import 'package:flutter/material.dart';

class LanguageProvider with ChangeNotifier {
  Locale _locale = Locale('es', '');  // Idioma predeterminado (español)

  Locale get locale => _locale;

  void changeLanguage(String languageCode) {
    if (languageCode == 'es') {
      _locale = Locale('es', '');
    } else if (languageCode == 'en') {
      _locale = Locale('en', '');
    }
    notifyListeners();
  }
}
