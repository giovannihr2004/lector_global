// -----------------------------------------------------------------------------
// 📄 Archivo: android/app/build.gradle.kts
// 📝 Descripción: Configuración moderna del módulo Android para Lector Global
// 📅 Última actualización: 30/04/2025 - (GMT-5)
// -----------------------------------------------------------------------------

plugins {
    id("com.android.application")
    id("org.jetbrains.kotlin.android")
    id("com.google.gms.google-services") // ✅ Plugin necesario para Firebase
}

android {
    namespace = "android.lector.global"
    compileSdk = 34
    ndkVersion = "27.0.12077973" // ✅ Soluciona incompatibilidades de NDK detectadas

    defaultConfig {
        applicationId = "android.lector.global" // ✅ ID usado en Firebase (google-services.json)
        minSdk = 24
        targetSdk = 34
        versionCode = 1
        versionName = "1.0.0"
    }

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_11
        targetCompatibility = JavaVersion.VERSION_11
    }
    kotlinOptions {
        jvmTarget = "11"
    }

    buildTypes {
        release {
            signingConfig = signingConfigs.getByName("debug")
        }
    }
}

flutter {
    source = "../.."
}
