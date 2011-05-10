######################################################################
# Automatically generated by qmake (2.01a) to 24. maalis 09:24:08 2011
######################################################################

TEMPLATE = lib
TARGET = 
DEPENDPATH += .
INCLUDEPATH += .

QT += core gui declarative

# Input
HEADERS += qtquickinfo.h
SOURCES += qtquickinfo.cpp

symbian {
    #Build STDDLL
    CONFIG += stdbinary

    TARGET = qtquickinfolib

    #Symbian specific definitions
    MMP_RULES += EXPORTUNFROZEN
    TARGET.UID3 = 0xE19D73D4
    TARGET.CAPABILITY = LocalServices NetworkServices ReadUserData UserEnvironment WriteUserData
    TARGET.EPOCALLOWDLLDATA = 1
    addFiles.sources = $${TARGET}.dll
    addFiles.path = !:/sys/bin
    DEPLOYMENT += addFiles
}

unix:!symbian: {
    target.path = /opt/qtinfo/bin
    INSTALLS += target
}

OTHER_FILES += \
    qtquick10.qml \
    qtquick11.qml \
    qtquick20.qml \
    qt47.qml

RESOURCES += \
    qtquickqmls.qrc
