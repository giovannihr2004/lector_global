<<<<<<< HEAD
// 📅 Última actualización: 27/04/2025 - 16:41 (hora Colombia)
// Traducción al francés para Lector Global

import '../app_localizations.dart'; // Importamos la clase base
=======
// 📅 Última actualización: 04/05/2025 - 11:53 (hora Colombia)
// Traducción al francés para Lector Global

import '../l10n/app_localizations.dart';
>>>>>>> d67b3c5 (Versión estable de pantalla de inicio de sesión - Diseño limpio y funcional - 050520251722)

class AppLocalizationsFr implements AppLocalizations {
  @override
  String get welcome => 'Bienvenue sur Lector Global';

  @override
<<<<<<< HEAD
  String get start_button => 'Commencer';

  @override
  String get description => 'Le voyage commence par une page';
=======
  String get startButton => 'Commencer';

  @override
  String get description => 'Le voyage commence par une page';

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
