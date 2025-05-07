// -----------------------------------------------------------------------------
// 📄 Archivo: android/settings.gradle.kts
// 📝 Descripción: Configura la gestión de plugins y la construcción de Flutter en Gradle.
// 📅 Última actualización: 06/05/2025 - 20:30 (Hora de Colombia)
// -----------------------------------------------------------------------------

pluginManagement {
    // Carga la ruta del SDK de Flutter desde el archivo local.properties.
    val flutterSdkPath = run {
        val properties = java.util.Properties()
        file("local.properties").inputStream().use { properties.load(it) }
        val flutterSdkPath = properties.getProperty("flutter.sdk")
        require(flutterSdkPath != null) { "flutter.sdk not set in local.properties" }
        flutterSdkPath
    }

    // Incluye el build script de flutter_tools para integrar la construcción de Flutter con Gradle.
    includeBuild("$flutterSdkPath/packages/flutter_tools/gradle")

    // Define los repositorios de donde se resolverán los plugins.
    repositories {
        google() // Repositorio de Google
        mavenCentral() // Repositorio Maven Central
        gradlePluginPortal() // Portal de plugins de Gradle
    }
}

plugins {
    // Plugin de Flutter para carga de plugins de Flutter.
    id("dev.flutter.flutter-plugin-loader") version "1.0.0"

    // Plugin de Android para aplicaciones.
    id("com.android.application") version "8.7.0" apply false

    // Plugin de servicios de Google (FlutterFire, Firebase, Analytics, etc.)
    // START: FlutterFire Configuration
    id("com.google.gms.google-services") version "4.3.15" apply false
    // END: FlutterFire Configuration

    // Plugin de Kotlin para proyectos Android.
    id("org.jetbrains.kotlin.android") version "1.8.22" apply false
}

// Incluye el módulo principal de la aplicación.
include(":app")
