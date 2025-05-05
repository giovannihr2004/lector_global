<<<<<<< HEAD
// 📅 Última actualización: 27/04/2025 - 16:41 (hora Colombia)
=======
// 📅 Última actualización: 04/05/2025 - 11:59 (hora Colombia)
>>>>>>> d67b3c5 (Versión estable de pantalla de inicio de sesión - Diseño limpio y funcional - 050520251722)
// Traducción al japonés para Lector Global

import '../l10n/app_localizations.dart';

class AppLocalizationsJa implements AppLocalizations {
  @override
  String get welcome => 'Lector Globalへようこそ';

  @override
<<<<<<< HEAD
  String get start_button => '開始';

  @override
  String get description => '旅は一つのページから始まります';
=======
  String get startButton => '開始';

  @override
  String get description => '旅は一つのページから始まります';

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
