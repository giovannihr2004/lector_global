// android/build.gradle.kts

// Plugin para habilitar Firebase (google-services)
plugins {
    id("com.google.gms.google-services") version "4.4.2" apply false
}

// Repositorios y configuración del directorio de compilación
allprojects {
    repositories {
        google()
        mavenCentral()
    }
}

val newBuildDir: Directory = rootProject.layout.buildDirectory.dir("../../build").get()
rootProject.layout.buildDirectory.value(newBuildDir)

subprojects {
    val newSubprojectBuildDir: Directory = newBuildDir.dir(project.name)
    project.layout.buildDirectory.value(newSubprojectBuildDir)
}

// Asegura que los subproyectos estén listos para evaluarse junto con `:app`
subprojects {
    project.evaluationDependsOn(":app")
}

// Tarea de limpieza del proyecto
tasks.register<Delete>("clean") {
    delete(rootProject.layout.buildDirectory)
}
