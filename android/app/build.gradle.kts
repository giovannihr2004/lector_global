// -----------------------------------------------------------------------------
// Archivo: android/app/build.gradle.kts
// Descripción: Configuración del módulo de la app para Android con soporte Firebase
// Última actualización: 24/04/2025
// -----------------------------------------------------------------------------

plugins {
    id("com.android.application")
    id("kotlin-android")
    // El plugin de Flutter debe ir después del de Android y Kotlin
    id("dev.flutter.flutter-gradle-plugin")
}

android {
    namespace = "com.example.lector_global"
    compileSdk = flutter.compileSdkVersion
    ndkVersion = "27.0.12077973" // ✅ Versión requerida por Firebase y plugins

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_11
        targetCompatibility = JavaVersion.VERSION_11
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_11.toString()
    }

    defaultConfig {
        // ✅ Este ID debe coincidir con el de Firebase (google-services.json)
        applicationId = "android.lector.global"
        minSdk = flutter.minSdkVersion
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }

    buildTypes {
        release {
            // Firma con la clave de debug por ahora para facilitar pruebas
            signingConfig = signingConfigs.getByName("debug")
        }
    }
}

flutter {
    source = "../.."
}

// -----------------------------------------------------------------------------
// Plugin de Google Services necesario para Firebase Auth, Analytics, etc.
// -----------------------------------------------------------------------------
apply(plugin = "com.google.gms.google-services")
