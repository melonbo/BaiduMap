TEMPLATE = app
TARGET = flat
QT += quick webview

SOURCES += \
    main.cpp

RESOURCES += \
    flat.qrc

OTHER_FILES += \
    main.qml

DISTFILES += \
    Content.qml \
    SettingsIcon.qml \
    android/AndroidManifest.xml \
    android/gradle/wrapper/gradle-wrapper.jar \
    android/gradlew \
    android/res/values/libs.xml \
    android/build.gradle \
    android/gradle/wrapper/gradle-wrapper.properties \
    android/gradlew.bat

target.path = $$[QT_INSTALL_EXAMPLES]/quickcontrols/extras/flat
INSTALLS += target

contains(ANDROID_TARGET_ARCH,armeabi-v7a) {
    ANDROID_PACKAGE_SOURCE_DIR = \
        $$PWD/android
}
