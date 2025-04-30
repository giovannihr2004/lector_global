// -----------------------------------------------------------------------------
// Archivo principal de la aplicación Lector Global
// Archivo: main.dart
// Descripción: Configura el punto de entrada, tema, navegación inicial y control de sesión.
// Versión: 2.0.1 - Integración de traducción dinámica completa
// Fecha: 28/04/2025 - Hora: 23:00 (Hora de Colombia)
// -----------------------------------------------------------------------------

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart'; // Importar traducciones generadas
import 'package:provider/provider.dart';
import 'language_provider.dart';
import 'screens/welcome_screen.dart';
import 'screens/auth/login_screen.dart';
import 'screens/auth/register_screen.dart';
import 'screens/dashboard_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyBMmGwsJJ7XdhQDO3WZcAr8xOpRzB17k4A",
        authDomain: "lector-global-27551.firebaseapp.com",
        projectId: "lector-global-27551",
        storageBucket: "lector-global-27551.firebasestorage.app",
        messagingSenderId: "240944008110",
        appId: "1:240944008110:web:efc9ab5f55e005ab5a563f",
        measurementId: "G-90VWK701YK",
      ),
    );
  } else {
    await Firebase.initializeApp();
  }

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
          home: const RootScreen(), // Pantalla principal
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
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        } else if (snapshot.hasData) {
          // Si el usuario está autenticado, redirigir al Dashboard
          Future.microtask(() {
            Navigator.pushReplacementNamed(context, '/dashboard');
          });
          return const SizedBox(); // Espacio vacío mientras se realiza la redirección
        } else {
          return const WelcomeScreen(); // Si no está autenticado, mostrar WelcomeScreen
        }
      },
    );
  }
}
