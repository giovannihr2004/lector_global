// -----------------------------------------------------------------------------
// Archivo principal de la aplicación Lector Global
// Archivo: main.dart
// Descripción: Configura el punto de entrada, tema, navegación inicial y control de sesión.
// Versión: 2.0 - Interfaz funcional el día 27/04/2025 - Hora: 19:34 (Hora de Colombia)
// Fecha: 23/04/2025 - Hora: 23:50 (202504232350)
// -----------------------------------------------------------------------------

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_localizations/flutter_localizations.dart'; // Importar para localización
import 'package:provider/provider.dart'; // Para ChangeNotifierProvider
import 'language_provider.dart'; // Importa el LanguageProvider
import 'screens/welcome_screen.dart';
import 'screens/auth/login_screen.dart';
import 'screens/auth/register_screen.dart';
import 'screens/dashboard_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Inicialización de Firebase para web y móviles
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

/// Clase principal de la aplicación
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<LanguageProvider>(
      builder: (context, languageProvider, child) {
        return MaterialApp(
          title: 'Lector Global',
          locale: languageProvider.locale, // Usar el idioma seleccionado
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          supportedLocales: [
            Locale('es', ''), // Español
            Locale('en', ''), // Inglés
            Locale('fr', ''), // Francés
            Locale('it', ''), // Italiano
            Locale('pt', ''), // Portugués
            Locale('de', ''), // Alemán
            Locale('ru', ''), // Ruso
            Locale('ja', ''), // Japonés
            Locale('zh', ''), // Chino
            Locale('ar', ''), // Árabe
          ],
          localizationsDelegates: [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          home: const RootScreen(), // Control de navegación inicial
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

/// Pantalla que redirige automáticamente según el estado de sesión
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
          return const DashboardScreen();
        } else {
          return const WelcomeScreen();
        }
      },
    );
  }
}

/// Selector de idioma para cambiar entre los idiomas configurados
class LanguageSelector extends StatelessWidget {
  const LanguageSelector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: context.read<LanguageProvider>().locale.languageCode,
      items: [
        DropdownMenuItem(value: 'es', child: Text('Español')),
        DropdownMenuItem(value: 'en', child: Text('English')),
        DropdownMenuItem(value: 'fr', child: Text('Français')),
        DropdownMenuItem(value: 'it', child: Text('Italiano')),
        DropdownMenuItem(value: 'pt', child: Text('Português')),
        DropdownMenuItem(value: 'de', child: Text('Deutsch')),
        DropdownMenuItem(value: 'ru', child: Text('Русский')),
        DropdownMenuItem(value: 'ja', child: Text('日本語')),
        DropdownMenuItem(value: 'zh', child: Text('中文')),
        DropdownMenuItem(value: 'ar', child: Text('العربية')),
      ],
      onChanged: (String? newValue) {
        if (newValue != null) {
          context.read<LanguageProvider>().changeLanguage(newValue);
        }
      },
    );
  }
}

/// Pantalla de bienvenida con el selector de idioma
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bienvenido a Lector Global'),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: LanguageSelector(), // Asegúrate de agregar el selector aquí
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('El viaje comienza con una página'),
            const Text('Desarrollado por Jhovani Holguín Rojas'),
            const Text('Versión: 1.0.0'),
            const Text('Fecha: 23 de abril de 2025'),
            ElevatedButton(onPressed: () {}, child: const Text('Comenzar')),
          ],
        ),
      ),
    );
  }
}
