######################################################################
# Automatically generated by qmake (2.01a) to 24. maalis 09:24:08 2011
######################################################################

TEMPLATE = lib
TARGET = 
DEPENDPATH += .
INCLUDEPATH += .

QT += core gui opengl

# Input
HEADERS += glinfo.h
SOURCES += glinfo.cpp

symbian {
    #Build STDDLL
    CONFIG += stdbinary

    TARGET = glinfolib

    #Symbian specific definitions
    MMP_RULES += EXPORTUNFROZEN
    TARGET.UID3 = 0xE2D94F71
    TARGET.CAPABILITY = LocalServices NetworkServices ReadUserData UserEnvironment WriteUserData
    TARGET.EPOCALLOWDLLDATA = 1
    addFiles.sources = $${TARGET}.dll
    addFiles.path = !:/sys/bin
    DEPLOYMENT += addFiles
}

unix:!symbian { # not funny
    target.path = /opt/qtinfo/bin
    INSTALLS += target
}

