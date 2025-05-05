<<<<<<< HEAD
// 📅 Última actualización: 27/04/2025 - 16:41 (hora Colombia)
=======
// 📅 Última actualización: 04/05/2025 - 12:06 (hora Colombia)
>>>>>>> d67b3c5 (Versión estable de pantalla de inicio de sesión - Diseño limpio y funcional - 050520251722)
// Traducción al chino para Lector Global

import '../l10n/app_localizations.dart';

class AppLocalizationsZh implements AppLocalizations {
  @override
  String get welcome => '欢迎来到Lector Global';

  @override
<<<<<<< HEAD
  String get start_button => '开始';

  @override
  String get description => '旅程从一页开始';
=======
  String get startButton => '开始';

  @override
  String get description => '旅程从一页开始';

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
