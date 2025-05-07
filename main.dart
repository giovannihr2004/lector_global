// -----------------------------------------------------------------------------
// 📄 Archivo: main.dart
// 📍 Ubicación: lib/main.dart
// 📝 Descripción: Configura la app y define las rutas principales de Lector Global.
// 📅 Última actualización: 06/05/2025 - 19:15 (Hora de Colombia)
// -----------------------------------------------------------------------------

import 'package:flutter/material.dart';
import 'package:lector_global/screens/welcome_screen.dart';
import 'package:lector_global/screens/auth/login_screen.dart';
import 'package:lector_global/screens/auth/register_screen.dart';

void main() {
  runApp(const MyApp());
}

/// Clase principal de la aplicación
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lector Global',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const WelcomeScreen(), // Pantalla inicial de la app
      routes: {
        '/login': (context) => const LoginScreen(),
        '/register': (context) => const RegisterScreen(),
      },
    );
  }
}

// -----------------------------------------------------------------------------
// Parte 2: Declaración del widget principal con estado (MyHomePage)
// -----------------------------------------------------------------------------

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title; // Título que se mostrará en el AppBar

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

// -----------------------------------------------------------------------------
// Parte 3: Lógica del estado, contador y estructura visual principal
// -----------------------------------------------------------------------------

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  /// Método para incrementar el contador
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Has presionado el botón esta cantidad de veces:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Incrementar',
        child: const Icon(Icons.add),
      ),
    );
  }
}
