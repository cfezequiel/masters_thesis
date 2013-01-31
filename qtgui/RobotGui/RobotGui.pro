#-------------------------------------------------
#
# Project created by QtCreator 2013-01-31T17:21:20
#
#-------------------------------------------------

QT       += core gui

TARGET = RobotGui
TEMPLATE = app


SOURCES += main.cpp\
           mainwindow.cpp\
           mapscene.cpp\
           mapobject.cpp\
           ArClient.cpp

HEADERS  += mainwindow.h\
            mapscene.h\
            mapobject.h\
            ArClient.h

FORMS    += mainwindow.ui

RESOURCES += \
    images.qrc

LIBS += -L/usr/local/Aria/lib -lAria -lArNetworking -lpthread -ldl -lrt

INCLUDEPATH += /usr/local/Aria/include \
               /usr/local/Aria/ArNetworking/include

