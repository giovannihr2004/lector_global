// -----------------------------------------------------------------------------
// 📄 Archivo: android/build.gradle.kts
// 🛠️ Configuración raíz de Gradle para Lector Global
// 📅 Última actualización: 30/04/2025 - (GMT-5)
// -----------------------------------------------------------------------------

plugins {
    id("com.android.application") version "8.3.2" apply false
    id("org.jetbrains.kotlin.android") version "1.9.23" apply false
    id("com.google.gms.google-services") version "4.4.1" apply false
}

task("clean", Delete::class) {
    delete(rootProject.buildDir)
}
