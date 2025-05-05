<<<<<<< HEAD
// 📅 Última actualización: 28/04/2025 - 20:45 (hora Colombia)
=======
// 📅 Última actualización: 04/05/2025 - 11:35 (hora Colombia)
>>>>>>> d67b3c5 (Versión estable de pantalla de inicio de sesión - Diseño limpio y funcional - 050520251722)
// Archivo: lib/l10n/app_localizations.dart
// Descripción: Clase base abstracta para las traducciones de Lector Global.

abstract class AppLocalizations {
  String get welcome;
  String get startButton;
  String get description;

  String translate(String key) {
    switch (key) {
      case 'welcome':
        return welcome;
<<<<<<< HEAD
      case 'start_button':
=======
      case 'startButton': // <-- corregido aquí
>>>>>>> d67b3c5 (Versión estable de pantalla de inicio de sesión - Diseño limpio y funcional - 050520251722)
        return startButton;
      case 'description':
        return description;
      default:
        return '';
    }
  }
}
