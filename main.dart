<<<<<<< HEAD
// --------------------------------------------------------------
// Parte 1: Configuración e inicio de la aplicación
// --------------------------------------------------------------

import 'package:flutter/material.dart';
import 'screens/welcome_screen.dart';
import 'screens/auth/login_screen.dart';
import 'screens/auth/register_screen.dart';
=======
// -----------------------------------------------------------------------------
// Parte 1: Configuración e inicio de la aplicación
// Archivo: main.dart
// Descripción: Configura la app y define las rutas principales.
// Versión: 1.1.0
// Fecha: 04/05/2025 - Hora: 18:58 (202505041858)
// -----------------------------------------------------------------------------

import 'package:flutter/material.dart';
import 'package:lector_global/screens/welcome_screen.dart';
import 'package:lector_global/screens/auth/login_screen.dart';
import 'package:lector_global/screens/auth/register_screen.dart';
>>>>>>> d67b3c5 (Versión estable de pantalla de inicio de sesión - Diseño limpio y funcional - 050520251722)

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
<<<<<<< HEAD
        // Esquema de color principal de la app
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const WelcomeScreen(), // Pantalla inicial de la app
=======
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const WelcomeScreen(),
>>>>>>> d67b3c5 (Versión estable de pantalla de inicio de sesión - Diseño limpio y funcional - 050520251722)
      routes: {
        '/login': (context) => const LoginScreen(),
        '/register': (context) => const RegisterScreen(),
      },
    );
  }
}

<<<<<<< HEAD
// --------------------------------------------------------------
// Parte 2: Declaración del widget principal con estado (MyHomePage)
// --------------------------------------------------------------
=======
// -----------------------------------------------------------------------------
// Parte 2: Declaración del widget principal con estado (MyHomePage)
// -----------------------------------------------------------------------------
>>>>>>> d67b3c5 (Versión estable de pantalla de inicio de sesión - Diseño limpio y funcional - 050520251722)

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

<<<<<<< HEAD
  final String title; // Título que se mostrará en el AppBar
=======
  final String title;
>>>>>>> d67b3c5 (Versión estable de pantalla de inicio de sesión - Diseño limpio y funcional - 050520251722)

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

<<<<<<< HEAD
// -------------------------------------------------------------------
// Parte 3: Lógica del estado, contador y estructura visual principal
// -------------------------------------------------------------------
=======
// -----------------------------------------------------------------------------
// Parte 3: Lógica del estado, contador y estructura visual principal
// -----------------------------------------------------------------------------
>>>>>>> d67b3c5 (Versión estable de pantalla de inicio de sesión - Diseño limpio y funcional - 050520251722)

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

<<<<<<< HEAD
  /// Método para incrementar el contador
=======
>>>>>>> d67b3c5 (Versión estable de pantalla de inicio de sesión - Diseño limpio y funcional - 050520251722)
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
