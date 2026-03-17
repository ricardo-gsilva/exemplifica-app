// Flutter expects Android build outputs under the project-level `../build` directory.
// If this is not set, APKs are generated under `android/app/build/...` and Flutter
// may fail to locate them.
rootProject.layout.buildDirectory.set(file("../build"))

subprojects {
    layout.buildDirectory.set(rootProject.layout.buildDirectory.dir(name))
}

allprojects {
    repositories {
        google()
        mavenCentral()
    }
}

// Mantenha apenas o clean simples
tasks.register<Delete>("clean") {
    delete(rootProject.layout.buildDirectory)
}
