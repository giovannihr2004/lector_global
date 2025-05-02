// -----------------------------------------------------------------------------
// 📄 Archivo: android/settings.gradle.kts
// 🛠️ Configuración de módulos y plugins para Gradle Kotlin DSL
// 📅 Última actualización: 30/04/2025 - (GMT-5)
// -----------------------------------------------------------------------------

pluginManagement {
    repositories {
        google()
        mavenCentral()
        gradlePluginPortal()
    }
}

dependencyResolutionManagement {
    repositoriesMode.set(RepositoriesMode.FAIL_ON_PROJECT_REPOS)
    repositories {
        google()
        mavenCentral()
    }
}

rootProject.name = "lector_global"
include(":app")
