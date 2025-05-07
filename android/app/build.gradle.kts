// -----------------------------------------------------------------------------
// 📄 Archivo: android/app/build.gradle.kts
// 📝 Descripción: Configuración moderna del módulo Android para Lector Global, con soporte completo Firebase y Flutter.
// 📅 Última actualización: 06/05/2025 - 22:05 (Hora de Colombia)
// -----------------------------------------------------------------------------

plugins {
    id("com.android.application")
    id("org.jetbrains.kotlin.android")
    id("dev.flutter.flutter-gradle-plugin")
}

android {
    namespace = "com.example.lector_global"
    compileSdk = flutter.compileSdkVersion
    ndkVersion = "27.0.12077973" // Versión requerida para Firebase y otros plugins nativos

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_17.toString()
    }

    defaultConfig {
        applicationId = "android.lector.global" // Este ID debe coincidir con google-services.json
        minSdk = flutter.minSdkVersion
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }

    buildTypes {
        release {
            signingConfig = signingConfigs.getByName("debug") // Firma temporal para testing
        }
    }
}

flutter {
    source = "../.."
}

// -----------------------------------------------------------------------------
// Plugins aplicados
// -----------------------------------------------------------------------------

apply(plugin = "com.google.gms.google-services") // Firebase Core Plugin (Analytics, Auth, etc.)

// -----------------------------------------------------------------------------
// Dependencias de Firebase y otras plataformas
// -----------------------------------------------------------------------------

dependencies {
    // Plataforma de versiones de Firebase (BoM)
    implementation(platform("com.google.firebase:firebase-bom:33.13.0"))

    // Firebase Core Services
    implementation("com.google.firebase:firebase-analytics")
    implementation("com.google.firebase:firebase-auth")

    // Otras dependencias de Firebase se pueden agregar aquí si lo deseas
    // Ejemplo para Storage:
    // implementation("com.google.firebase:firebase-storage")
}
