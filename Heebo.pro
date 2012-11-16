TEMPLATE = app
TARGET = Heebo

CONFIG += qt warn_on debug_and_release cascades

INCLUDEPATH += ../src/cpp
SOURCES += ../src/cpp/*.cpp
HEADERS += ../src/cpp/*.hpp ../src/cpp/*.h
RESOURCES += common.qrc game80.qrc bb10.qrc
 
lupdate_inclusion {
    SOURCES += ../src/qml/*.qml ../src/js/*.js
}

device {
	CONFIG(release, debug|release) {
		DESTDIR = o.le-v7
	}
	CONFIG(debug, debug|release) {
		DESTDIR = o.le-v7-g
	}
}

simulator {
	CONFIG(release, debug|release) {
		DESTDIR = o
	}
	CONFIG(debug, debug|release) {
		DESTDIR = o-g
	}
}

OBJECTS_DIR = $${DESTDIR}/.obj
MOC_DIR = $${DESTDIR}/.moc
RCC_DIR = $${DESTDIR}/.rcc
UI_DIR = $${DESTDIR}/.ui

suredelete.target = sureclean
suredelete.commands = $(DEL_FILE) $${MOC_DIR}/*; $(DEL_FILE) $${RCC_DIR}/*; $(DEL_FILE) $${UI_DIR}/*
suredelete.depends = distclean

QMAKE_EXTRA_TARGETS += suredelete

TRANSLATIONS = \
    $${TARGET}_en_GB.ts \
    $${TARGET}.ts

