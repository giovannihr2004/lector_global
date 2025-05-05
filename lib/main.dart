// -----------------------------------------------------------------------------
// Archivo principal de la aplicación Lector Global
// Archivo: main.dart
// Descripción: Configura el punto de entrada, tema, navegación inicial y control de sesión.
<<<<<<< HEAD
// Versión: 2.1.0 - Conexión Firebase corregida con flutterfire configure
// Fecha: 29/04/2025 - Hora: 23:30 (Hora de Colombia)
// -----------------------------------------------------------------------------

import 'package:flutter/foundation.dart';
=======
// Versión: 2.0.3 - Corrección definitiva de importaciones
// Fecha: 04/05/2025 - Hora: 23:59 (Hora de Colombia)
// -----------------------------------------------------------------------------

>>>>>>> d67b3c5 (Versión estable de pantalla de inicio de sesión - Diseño limpio y funcional - 050520251722)
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
<<<<<<< HEAD
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import 'firebase_options.dart'; // ← CORRECTO: importación real desde flutterfire
=======
import 'package:flutter_gen/gen_l10n/app_localizations.dart'; // Importar traducciones generadas
import 'package:provider/provider.dart';
>>>>>>> d67b3c5 (Versión estable de pantalla de inicio de sesión - Diseño limpio y funcional - 050520251722)
import 'language_provider.dart';
import 'screens/welcome_screen.dart';
import 'screens/auth/login_screen.dart';
import 'screens/auth/register_screen.dart';
import 'screens/dashboard_screen.dart';
<<<<<<< HEAD
=======
import 'firebase_options.dart'; // Archivo generado para la configuración de Firebase
>>>>>>> d67b3c5 (Versión estable de pantalla de inicio de sesión - Diseño limpio y funcional - 050520251722)

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

<<<<<<< HEAD
  await Firebase.initializeApp(
    options:
        DefaultFirebaseOptions
            .currentPlatform, // ← ahora está enlazado correctamente
  );
=======
  // Inicializar Firebase usando el archivo de configuración generado
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
>>>>>>> d67b3c5 (Versión estable de pantalla de inicio de sesión - Diseño limpio y funcional - 050520251722)

  runApp(
    ChangeNotifierProvider(
      create: (context) => LanguageProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<LanguageProvider>(
      builder: (context, languageProvider, child) {
        return MaterialApp(
          title: 'Lector Global',
          locale: languageProvider.locale,
          localeResolutionCallback: (locale, supportedLocales) {
            if (locale != null) {
              for (var supportedLocale in supportedLocales) {
                if (supportedLocale.languageCode == locale.languageCode) {
                  return supportedLocale;
                }
              }
            }
            return supportedLocales.first;
          },
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          supportedLocales: const [
            Locale('es', ''),
            Locale('en', ''),
            Locale('fr', ''),
            Locale('it', ''),
            Locale('pt', ''),
            Locale('de', ''),
            Locale('ru', ''),
            Locale('ja', ''),
            Locale('zh', ''),
            Locale('ar', ''),
          ],
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
<<<<<<< HEAD
          home: const RootScreen(),
=======
          home: const RootScreen(), // Pantalla principal
>>>>>>> d67b3c5 (Versión estable de pantalla de inicio de sesión - Diseño limpio y funcional - 050520251722)
          routes: {
            '/login': (context) => const LoginScreen(),
            '/register': (context) => const RegisterScreen(),
            '/dashboard': (context) => const DashboardScreen(),
          },
        );
      },
    );
  }
}

class RootScreen extends StatelessWidget {
  const RootScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
<<<<<<< HEAD
=======
      // Revisar si el usuario está autenticado
>>>>>>> d67b3c5 (Versión estable de pantalla de inicio de sesión - Diseño limpio y funcional - 050520251722)
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        } else if (snapshot.hasData) {
<<<<<<< HEAD
          Future.microtask(() {
            Navigator.pushReplacementNamed(context, '/dashboard');
          });
          return const SizedBox();
        } else {
          return const WelcomeScreen();
=======
          // Si el usuario está autenticado, redirigir al Dashboard
          WidgetsBinding.instance.addPostFrameCallback((_) {
            Navigator.pushReplacementNamed(context, '/dashboard');
          });
          return const SizedBox(); // Espacio vacío mientras se realiza la redirección
        } else {
          return const WelcomeScreen(); // Si no está autenticado, mostrar WelcomeScreen
>>>>>>> d67b3c5 (Versión estable de pantalla de inicio de sesión - Diseño limpio y funcional - 050520251722)
        }
      },
    );
  }
}
