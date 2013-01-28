#-------------------------------------------------
#
# Project created by QtCreator 2012-11-13T17:22:39
#
#-------------------------------------------------

QT       += core gui

TARGET = RobotGUI
TEMPLATE = app


SOURCES += main.cpp\
        robotgui.cpp \
        connectdialog.cpp \
        robotgraphic.cpp \
    ArClient.cpp \
    mapscene.cpp

HEADERS  += robotgui.h \
            connectdialog.h \
    robotgraphic.h \
    ArClient.h \
    mapscene.h

FORMS    += robotgui.ui

LIBS += -L/usr/local/Aria/lib -lAria -lArNetworking -lpthread -ldl -lrt

INCLUDEPATH += /usr/local/Aria/include \
               /usr/local/Aria/ArNetworking/include

