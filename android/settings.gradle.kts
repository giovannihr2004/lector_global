<<<<<<< HEAD
pluginManagement {
=======
// Archivo: android/settings.gradle.kts
// Fecha de última revisión: 04/05/2025 (Hora Colombia GMT-5)

pluginManagement {
    // Comentario: Carga la ruta del SDK de Flutter desde el archivo local.properties.
>>>>>>> d67b3c5 (Versión estable de pantalla de inicio de sesión - Diseño limpio y funcional - 050520251722)
    val flutterSdkPath = run {
        val properties = java.util.Properties()
        file("local.properties").inputStream().use { properties.load(it) }
        val flutterSdkPath = properties.getProperty("flutter.sdk")
        require(flutterSdkPath != null) { "flutter.sdk not set in local.properties" }
        flutterSdkPath
    }

<<<<<<< HEAD
    includeBuild("$flutterSdkPath/packages/flutter_tools/gradle")

    repositories {
        google()
        mavenCentral()
        gradlePluginPortal()
=======
    // Comentario: Incluye el build script de flutter_tools para integrar la construcción de Flutter con Gradle.
    includeBuild("$flutterSdkPath/packages/flutter_tools/gradle")

    // Comentario: Define los repositorios de donde se resolverán los plugins.
    repositories {
        google()  // Comentario: Repositorio de Google.
        mavenCentral()  // Comentario: Repositorio Maven Central.
        gradlePluginPortal()  // Comentario: Portal de plugins de Gradle.
>>>>>>> d67b3c5 (Versión estable de pantalla de inicio de sesión - Diseño limpio y funcional - 050520251722)
    }
}

plugins {
<<<<<<< HEAD
    id("dev.flutter.flutter-plugin-loader") version "1.0.0"
    id("com.android.application") version "8.7.0" apply false
    // START: FlutterFire Configuration
    id("com.google.gms.google-services") version("4.3.15") apply false
    // END: FlutterFire Configuration
    id("org.jetbrains.kotlin.android") version "1.8.22" apply false
}

=======
    // Comentario: Plugin de Flutter para carga de plugins de Flutter.
    id("dev.flutter.flutter-plugin-loader") version "1.0.0"

    // Comentario: Plugin de Android para aplicaciones.
    id("com.android.application") version "8.7.0" apply false

    // Comentario: Plugin de servicios de Google (Firebase, Analytics, etc.).
    // START: FlutterFire Configuration
    id("com.google.gms.google-services") version("4.3.15") apply false
    // END: FlutterFire Configuration

    // Comentario: Plugin de Kotlin para proyectos Android.
    id("org.jetbrains.kotlin.android") version "1.8.22" apply false
}

// Comentario: Incluye el módulo principal de la aplicación.
>>>>>>> d67b3c5 (Versión estable de pantalla de inicio de sesión - Diseño limpio y funcional - 050520251722)
include(":app")
