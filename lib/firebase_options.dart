// -----------------------------------------------------------------------------
// Archivo: lib/firebase_options.dart
// Descripción: Configuración automática generada por FlutterFire CLI para Firebase
// Última actualización: 04/05/2025 - Hora: 11:00 p.m. (Hora de Colombia)
// -----------------------------------------------------------------------------

import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, TargetPlatform, kIsWeb;

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: "AIzaSyD2ihUQEbdSxsJvuf4t0YP7Sy9XYp-HRKs",
    authDomain: "lector-global-1c462.firebaseapp.com",
    projectId: "lector-global-1c462",
    storageBucket: "lector-global-1c462.appspot.com",
    messagingSenderId: "562353221228",
    appId: "1:562353221228:web:580e0b1018505a8e8fb249",
    measurementId: "G-4Z6182TTRE",
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: "AIzaSyD2ihUQEbdSxsJvuf4t0YP7Sy9XYp-HRKs",
    authDomain: "lector-global-1c462.firebaseapp.com",
    projectId: "lector-global-1c462",
    storageBucket: "lector-global-1c462.appspot.com",
    messagingSenderId: "562353221228",
    appId: "1:562353221228:android:580e0b1018505a8e8fb249",
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: "AIzaSyD2ihUQEbdSxsJvuf4t0YP7Sy9XYp-HRKs",
    authDomain: "lector-global-1c462.firebaseapp.com",
    projectId: "lector-global-1c462",
    storageBucket: "lector-global-1c462.appspot.com",
    messagingSenderId: "562353221228",
    appId: "1:562353221228:ios:580e0b1018505a8e8fb249",
    iosBundleId: "com.example.lectorGlobal",
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: "AIzaSyD2ihUQEbdSxsJvuf4t0YP7Sy9XYp-HRKs",
    authDomain: "lector-global-1c462.firebaseapp.com",
    projectId: "lector-global-1c462",
    storageBucket: "lector-global-1c462.appspot.com",
    messagingSenderId: "562353221228",
    appId: "1:562353221228:ios:580e0b1018505a8e8fb249",
    iosBundleId: "com.example.lectorGlobal",
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: "AIzaSyD2ihUQEbdSxsJvuf4t0YP7Sy9XYp-HRKs",
    authDomain: "lector-global-1c462.firebaseapp.com",
    projectId: "lector-global-1c462",
    storageBucket: "lector-global-1c462.appspot.com",
    messagingSenderId: "562353221228",
    appId: "1:562353221228:windows:580e0b1018505a8e8fb249",
  );
}
