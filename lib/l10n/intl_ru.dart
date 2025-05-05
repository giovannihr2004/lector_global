<<<<<<< HEAD
// 📅 Última actualización: 27/04/2025 - 16:41 (hora Colombia)
=======
// 📅 Última actualización: 04/05/2025 - 12:03 (hora Colombia)
>>>>>>> d67b3c5 (Versión estable de pantalla de inicio de sesión - Diseño limpio y funcional - 050520251722)
// Traducción al ruso para Lector Global

import '../l10n/app_localizations.dart';

class AppLocalizationsRu implements AppLocalizations {
  @override
  String get welcome => 'Добро пожаловать в Lector Global';

  @override
<<<<<<< HEAD
  String get start_button => 'Начать';

  @override
  String get description => 'Путешествие начинается с одной страницы';
=======
  String get startButton => 'Начать';

  @override
  String get description => 'Путешествие начинается с одной страницы';

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
