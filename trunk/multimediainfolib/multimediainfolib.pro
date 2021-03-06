######################################################################
# Automatically generated by qmake (2.01a) to 24. maalis 09:24:08 2011
######################################################################

include (../multipass.pri)

TEMPLATE = lib
#TARGET =
DEPENDPATH += .
INCLUDEPATH += .

#QT += core gui
# Input
HEADERS += multimediainfo.h
SOURCES += multimediainfo.cpp

contains(QT_MAJOR_VERSION,5) {
    QT += multimedia

    TARGET = multimediainfolib
    target.path = /opt/qtinfo/bin
    INSTALLS += target

    include(../sailfish.pri)

    android: include(../android.pri)

} else {
    maemo5 {
        CONFIG += $$MOBCONFIG
        !isEmpty(MOBLOAD) load($$MOBLOAD)
    } else {
        CONFIG += mobility
        load(mobilityconfig)
        contains(MOBILITY_MAJOR_VERSION,1) : message(Mobility $$MOBILITY_VERSION detected with modules: $$MOBILITY_CONFIG)
    }

    isEmpty(MOBILITY_VERSION): isEmpty(MOBILITY_MAJOR_VERSION) {
        MOBILITY_CONFIG=location contacts multimedia publishsubscribe versit messaging systeminfo serviceframework sensors
        MOBILITY_VERSION=1.0.2
        MOBILITY_MAJOR_VERSION=1
        MOBILITY_MINOR_VERSION=0
        MOBILITY_PATCH_VERSION=2
    }

    MOBILITY += multimedia

    TARGET = multimediainfolib$$MOBILITY_MAJOR_VERSION$$MOBILITY_MINOR_VERSION

    symbian {
        #Build STDDLL
        CONFIG += stdbinary

        #Symbian specific definitions
        MMP_RULES += EXPORTUNFROZEN

        TARGET.EPOCALLOWDLLDATA = 1

        addFiles.sources = $${TARGET}.dll
        addFiles.path = !:/sys/bin
        DEPLOYMENT += addFiles
    }

    unix:!symbian { # not funny
        target.path = /opt/qtinfo/bin
        INSTALLS += target

        # don't do this in your projects, we're trained professionals

        maemo5 {
            ! contains(MOBILITY_MINOR_VERSION,2): ! contains(MOBILITY_MINOR_VERSION,1) { # the last pass is with mobility 1.0, so we need to add to the package 1.1 and 1.2 that have been compiled in the previous passes
                 extratarget.files = libmultimediainfolib11.so libmultimediainfolib12.so
                 extratarget.path=/opt/qtinfo/bin
                 INSTALLS += extratarget
            }
        }
    }

    include(../qtinfo_symbianplatsec.pri)
}
