######################################################################
# Automatically generated by qmake (2.01a) to 24. maalis 09:24:08 2011
######################################################################

TEMPLATE = lib
#TARGET =
DEPENDPATH += .
INCLUDEPATH += .

QT += core gui
contains (QT_MAJOR_VERSION,5):contains(QT_MINOR_VERSION,0):{
    # Hey, how about we make a non-backwards compatible change, and then change it back without deprecation in the next point release?
    # https://codereview.qt-project.org/#change,35516
    QT += qtquick1 qtdeclarative

#} else: contains(QT_MAJOR_VERSION,5):{
    # 5.1 and beyond
#    QT += quick declarative

} else {
    QT += declarative
}

# Input
HEADERS += qtquickinfo.h
SOURCES += qtquickinfo.cpp

symbian {
    #Build STDDLL
    CONFIG += stdbinary

    TARGET = qtquickinfolib

    #Symbian specific definitions
    MMP_RULES += EXPORTUNFROZEN

    TARGET.EPOCALLOWDLLDATA = 1

    addFiles.sources = $${TARGET}.dll
    addFiles.path = !:/sys/bin
    DEPLOYMENT += addFiles
}

unix:!symbian: {
    target.path = /opt/qtinfo/bin
    INSTALLS += target

    include(../sailfish.pri)

}

android: include(../android.pri)

OTHER_FILES += \
    qtquick10.qml \
    qtquick11.qml \
    qtquick20.qml \
    qt47.qml

RESOURCES += \
    qtquickqmls.qrc

include(../qtinfo_symbianplatsec.pri)
