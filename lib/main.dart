// 📅 Última actualización: 29/04/2025 - 15:41 (Hora de Colombia)
// Archivo: main.dart
// Descripción: Inicializa Firebase correctamente antes de mostrar la pantalla de inicio

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'screens/welcome_screen.dart';
import 'screens/dashboard_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options:
        kIsWeb
            ? const FirebaseOptions(
              apiKey: "TU_API_KEY",
              authDomain: "TU_DOMINIO.firebaseapp.com",
              projectId: "TU_PROJECT_ID",
              storageBucket: "TU_BUCKET.appspot.com",
              messagingSenderId: "TU_SENDER_ID",
              appId: "TU_APP_ID",
            )
            : null,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lector Global',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const InitialScreen(),
    );
  }
}

class InitialScreen extends StatelessWidget {
  const InitialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final User? user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      return const DashboardScreen();
    } else {
      return const WelcomeScreen();
    }
  }
}
