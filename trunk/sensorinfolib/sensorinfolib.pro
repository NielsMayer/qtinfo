######################################################################
# Automatically generated by qmake (2.01a) to 24. maalis 09:24:08 2011
######################################################################

TEMPLATE = lib
#TARGET =
DEPENDPATH += .
INCLUDEPATH += .

QT += core gui sensors

# Input
HEADERS += sensorinfo.h
SOURCES += sensorinfo.cpp

symbian {
    #Build STDDLL
    CONFIG += stdbinary

    TARGET = sensorinfolib

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

    packagesExist(sailfishapp) {
        target.path = /usr/share/harbour-qtinfo/bin
    }

}

android {
    contains(QT_ARCH,i386): target.path = /libs/x86
    contains(QT_ARCH,arm): target.path = /libs/armv7
}

include(../qtinfo_symbianplatsec.pri)
