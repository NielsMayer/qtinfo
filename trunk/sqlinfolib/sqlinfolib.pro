######################################################################
# Automatically generated by qmake (2.01a) to 24. maalis 09:24:08 2011
######################################################################

TEMPLATE = lib
TARGET = 
DEPENDPATH += .
INCLUDEPATH += .

QT += core gui sql

# Input
HEADERS += sqlinfo.h
SOURCES += sqlinfo.cpp

symbian {
    #Build STDDLL
    CONFIG += stdbinary

    #Symbian specific definitions
    MMP_RULES += EXPORTUNFROZEN
    TARGET.UID3 = 0xE2DBBFFE
    TARGET.CAPABILITY = LocalServices NetworkServices ReadUserData UserEnvironment WriteUserData
    TARGET.EPOCALLOWDLLDATA = 1
    addFiles.sources = webkitinfolib.dll
    addFiles.path = !:/sys/bin
    DEPLOYMENT += addFiles
}

unix:!symbian: {
    target.path = /opt/qtinfo/bin
    INSTALLS += target
}
