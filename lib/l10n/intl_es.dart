<<<<<<< HEAD
// 📅 Última actualización: 28/04/2025 - 20:45 (hora Colombia)
// Traducción al español para Lector Global

import '../app_localizations.dart'; // corregimos la ruta

class AppLocalizationsEs extends AppLocalizations {
=======
// Archivo: lib/l10n/intl_es.dart
// Descripción: Traducción al español para Lector Global
// Última actualización: 05/05/2025 - Hora: 01:20 (hora Colombia)

import '../app_localizations.dart'; // ✅ Importar clase base correctamente

class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs(); // Constructor normal, NO const

>>>>>>> d67b3c5 (Versión estable de pantalla de inicio de sesión - Diseño limpio y funcional - 050520251722)
  @override
  String get welcome => 'Bienvenido a Lector Global';

  @override
<<<<<<< HEAD
  String get startButton => 'Comenzar';
=======
  String get startButton => 'Comenzar'; // ✅ Corregido a lowerCamelCase
>>>>>>> d67b3c5 (Versión estable de pantalla de inicio de sesión - Diseño limpio y funcional - 050520251722)

  @override
  String get description => 'El viaje comienza con una página';
}
