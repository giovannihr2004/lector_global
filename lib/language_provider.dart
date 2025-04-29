// -----------------------------------------------------------------------------
// Proveedor de idioma para gestionar el cambio dinámico de idioma en la app
// Archivo: language_provider.dart
// Descripción: Permite actualizar el idioma de toda la interfaz en tiempo real
// Versión: 1.0.1 - Actualización para AppLocalizations
// Fecha de última actualización: 28/04/2025 - 22:30 (Hora de Colombia)
// -----------------------------------------------------------------------------

import 'package:flutter/material.dart';

class LanguageProvider with ChangeNotifier {
  Locale _locale = const Locale('es'); // Idioma inicial

  Locale get locale => _locale;

  void changeLanguage(String languageCode) {
    _locale = Locale(languageCode);
    notifyListeners();
  }
}
