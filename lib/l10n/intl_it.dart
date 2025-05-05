<<<<<<< HEAD
// 📅 Última actualización: 27/04/2025 - 16:41 (hora Colombia)
// Traducción al italiano para Lector Global

import '../app_localizations.dart';
=======
// 📅 Última actualización: 04/05/2025 - 11:56 (hora Colombia)
// Traducción al italiano para Lector Global

import '../l10n/app_localizations.dart';
>>>>>>> d67b3c5 (Versión estable de pantalla de inicio de sesión - Diseño limpio y funcional - 050520251722)

class AppLocalizationsIt implements AppLocalizations {
  @override
  String get welcome => 'Benvenuto su Lector Global';

  @override
<<<<<<< HEAD
  String get start_button => 'Iniziare';

  @override
  String get description => 'Il viaggio inizia con una pagina';
=======
  String get startButton => 'Iniziare';

  @override
  String get description => 'Il viaggio inizia con una pagina';

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
