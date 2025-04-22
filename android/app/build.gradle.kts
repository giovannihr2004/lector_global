// -----------------------------------------------------------------------------
// Archivo: android/app/build.gradle.kts
// Descripción: Configuración del módulo Android de la app Lector Global
// Versión: 1.4
// Fecha: 21/04/2025
// -----------------------------------------------------------------------------

plugins {
    id("com.android.application")
    id("kotlin-android")
    // El plugin de Flutter debe ir después de los de Android y Kotlin
    id("dev.flutter.flutter-gradle-plugin")
}

android {
    namespace = "com.example.lector_global"
    compileSdk = flutter.compileSdkVersion
    ndkVersion = "27.0.12077973"  // Versión requerida por los plugins de autenticación

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_11
        targetCompatibility = JavaVersion.VERSION_11
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_11.toString()
    }

    defaultConfig {
        applicationId = "com.example.lector_global"
        minSdk = flutter.minSdkVersion
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }

    buildTypes {
        release {
            // Usar claves de depuración por ahora
            signingConfig = signingConfigs.getByName("debug")
        }
    }
}

flutter {
    source = "../.."
}
