<<<<<<< HEAD
// 📅 Última actualización: 27/04/2025 - 16:41 (hora Colombia)
=======
// 📅 Última actualización: 04/05/2025 - 11:48 (hora Colombia)
>>>>>>> d67b3c5 (Versión estable de pantalla de inicio de sesión - Diseño limpio y funcional - 050520251722)
// Traducción al alemán para Lector Global

import '../l10n/app_localizations.dart';

class AppLocalizationsDe implements AppLocalizations {
  @override
  String get welcome => 'Willkommen bei Lector Global';

  @override
<<<<<<< HEAD
  String get start_button => 'Starten';

  @override
  String get description => 'Die Reise beginnt mit einer Seite';
=======
  String get startButton => 'Starten';

  @override
  String get description => 'Die Reise beginnt mit einer Seite';

  @override
  String translate(String key) {
    switch (key) {
      case 'welcome':
        return welcome;
      case 'startButton':
        return startButton;
      case 'description':
        return description;
      default:
        return '';
    }
  }
>>>>>>> d67b3c5 (Versión estable de pantalla de inicio de sesión - Diseño limpio y funcional - 050520251722)
}
