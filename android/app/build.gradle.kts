// -----------------------------------------------------------------------------
// Archivo: android/app/build.gradle.kts
<<<<<<< HEAD
// Descripción: Configuración del módulo de la app para Android con soporte Firebase
// Última actualización: 24/04/2025
=======
// Revisión: 04/05/2025 - 08:28 p.m. (hora Colombia, GMT-5)
// Descripción: Configuración del módulo de la app Android con soporte Firebase y Flutter
>>>>>>> d67b3c5 (Versión estable de pantalla de inicio de sesión - Diseño limpio y funcional - 050520251722)
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
<<<<<<< HEAD
        // ✅ Este ID debe coincidir con el de Firebase (google-services.json)
=======
        // ✅ Este ID debe coincidir con el configurado en Firebase (google-services.json)
>>>>>>> d67b3c5 (Versión estable de pantalla de inicio de sesión - Diseño limpio y funcional - 050520251722)
        applicationId = "android.lector.global"
        minSdk = flutter.minSdkVersion
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }

    buildTypes {
        release {
<<<<<<< HEAD
            // Firma con la clave de debug por ahora para facilitar pruebas
=======
            // Firma con la clave de debug temporalmente para facilitar pruebas en desarrollo
>>>>>>> d67b3c5 (Versión estable de pantalla de inicio de sesión - Diseño limpio y funcional - 050520251722)
            signingConfig = signingConfigs.getByName("debug")
        }
    }
}

flutter {
    source = "../.."
}

// -----------------------------------------------------------------------------
<<<<<<< HEAD
// Plugin de Google Services necesario para Firebase Auth, Analytics, etc.
// -----------------------------------------------------------------------------
apply(plugin = "com.google.gms.google-services")
=======
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

    // Aquí puedes agregar otros servicios de Firebase si los requieres
    // Ejemplo: Firebase Auth
    // implementation("com.google.firebase:firebase-auth")
}
>>>>>>> d67b3c5 (Versión estable de pantalla de inicio de sesión - Diseño limpio y funcional - 050520251722)
