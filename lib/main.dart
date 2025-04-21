// ----------------------------------------
// Parte 1: Configuración e inicio de la aplicación
// ----------------------------------------

import 'package:flutter/material.dart';
import 'screens/welcome_screen.dart';

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
      theme: ThemeData(
        /// Esquema de color base para la aplicación
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home:
          const WelcomeScreen(), // ✅ Pantalla inicial que se muestra al abrir la app
    );
  }
}

// -------------------------------------------------------------
// Parte 2: Declaración del widget principal con estado (Home)
// -------------------------------------------------------------

/// Pantalla principal que será un widget con estado
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title; // Título mostrado en la barra superior (AppBar)

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

// -------------------------------------------------------------------
// Parte 3: Lógica del estado, contador y estructura visual principal
// -------------------------------------------------------------------

/// Estado de la pantalla principal con contador y estructura básica
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0; // Contador que se incrementa al presionar el botón flotante

  /// Método que incrementa el contador y actualiza la interfaz
  void _incrementCounter() {
    setState(() {
      _counter++; // Se incrementa el contador
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
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
