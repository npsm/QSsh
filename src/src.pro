QT += core network
QT -= gui

#greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

QSSH_ROOT = $${PWD}/..
DESTDIR   = $${QSSH_ROOT}/lib

TEMPLATE = lib
DEFINES += QSSH_LIBRARY

#TARGET  = $$qtLibraryTarget(QSsh)
TARGET  = QSsh
#$$qtLibraryTarget(QSsh)

CONFIG += c++11

include ($${PWD}/ssh.pri)

unix:headersDataFiles.path = /usr/include/qssh
unix:headersDataFiles.files = $${HEADERS}
INSTALLS += headersDataFiles
 
#unix:libraryFiles.path = /usr/lib
#unix:libraryFiles.files = $${QSSH_ROOT}/lib/*.so*
#INSTALLS += libraryFiles
target.path = /usr/lib
INSTALLS += target




