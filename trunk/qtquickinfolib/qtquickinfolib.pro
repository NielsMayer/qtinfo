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

    #Symbian specific definitions
    MMP_RULES += EXPORTUNFROZEN
    TARGET.UID3 = 0xE19D73D4
    TARGET.CAPABILITY = LocalServices NetworkServices ReadUserData UserEnvironment WriteUserData
    TARGET.EPOCALLOWDLLDATA = 1
    addFiles.sources = qtquickinfolib.dll
    addFiles.path = !:/sys/bin
    DEPLOYMENT += addFiles
}

maemo5 {
    target.path = /opt/qtinfo/bin
    INSTALLS += target
}
