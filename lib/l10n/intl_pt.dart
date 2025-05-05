<<<<<<< HEAD
// 📅 Última actualización: 27/04/2025 - 16:41 (hora Colombia)
// Traducción al portugués para Lector Global

import '../app_localizations.dart';
=======
// 📅 Última actualización: 04/05/2025 - 12:01 (hora Colombia)
// Traducción al portugués para Lector Global

import '../l10n/app_localizations.dart';
>>>>>>> d67b3c5 (Versión estable de pantalla de inicio de sesión - Diseño limpio y funcional - 050520251722)

class AppLocalizationsPt implements AppLocalizations {
  @override
  String get welcome => 'Bem-vindo ao Lector Global';

  @override
<<<<<<< HEAD
  String get start_button => 'Começar';

  @override
  String get description => 'A jornada começa com uma página';
=======
  String get startButton => 'Começar';

  @override
  String get description => 'A jornada começa com uma página';

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
