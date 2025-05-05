<<<<<<< HEAD
// 📅 Última actualización: 28/04/2025 - 20:45 (hora Colombia)
=======
// 📅 Última actualización: 04/05/2025 - 11:51 (hora Colombia)
>>>>>>> d67b3c5 (Versión estable de pantalla de inicio de sesión - Diseño limpio y funcional - 050520251722)
// Traducción al inglés para Lector Global

import '../l10n/app_localizations.dart';

class AppLocalizationsEn implements AppLocalizations {
  @override
  String get welcome => 'Welcome to Lector Global';

  @override
  String get startButton => 'Start';

  @override
  String get description => 'The journey begins with a page';
<<<<<<< HEAD
=======

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
