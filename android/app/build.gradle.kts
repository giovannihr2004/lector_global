// -----------------------------------------------------------------------------
// 📄 Archivo: android/app/build.gradle.kts
// 📝 Descripción: Configuración del módulo de la app Android con soporte Firebase y Flutter.
// 📅 Última actualización: 06/05/2025 - 20:40 (Hora de Colombia)
// -----------------------------------------------------------------------------

plugins {
    id("com.android.application")
    id("kotlin-android")
    id("dev.flutter.flutter-gradle-plugin") // El plugin de Flutter debe ir después
}

android {
    namespace = "com.example.lector_global"
    compileSdk = flutter.compileSdkVersion
    ndkVersion = "27.0.12077973" // Versión requerida por Firebase y plugins

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_11
        targetCompatibility = JavaVersion.VERSION_11
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_11.toString()
    }

    defaultConfig {
        applicationId = "android.lector.global" // Debe coincidir con google-services.json
        minSdk = flutter.minSdkVersion
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }

    buildTypes {
        release {
            signingConfig = signingConfigs.getByName("debug") // Firma temporal con clave de debug
        }
    }
}

flutter {
    source = "../.."
}

// -----------------------------------------------------------------------------
// Plugin de Google Services (obligatorio para Firebase Auth, Analytics, etc.)
// -----------------------------------------------------------------------------

apply(plugin = "com.google.gms.google-services")

// -----------------------------------------------------------------------------
// Dependencias de Firebase
// -----------------------------------------------------------------------------

dependencies {
    // Importar la plataforma de versiones de Firebase (BoM)
    implementation(platform("com.google.firebase:firebase-bom:33.13.0"))

    // Añadir Firebase Analytics
    implementation("com.google.firebase:firebase-analytics")

    // Puedes agregar aquí otros servicios de Firebase si los necesitas
    // Ejemplo para autenticación:
    // implementation("com.google.firebase:firebase-auth")
}
