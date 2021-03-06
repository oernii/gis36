
TEMPLATE 		= lib
INCLUDEPATH 	=	../include\
					../../shell/include \ 
					../../common/iconv/include \ 
					../../common/libxml2/include \
					../../common/pg/include \
					../../common/include
OUTPUT			= ../../..
TEMP			= ../../../temp/src/gis/OpenGISDemo
CONFIG      	+= plugin
QT				+= opengl

RCC_DIR		= ./res
RESOURCES	= ./res/resource.qrc

debug {
	DEFINES		+= _DEBUG
	DESTDIR 	= $${OUTPUT}/debug
	OBJECTS_DIR	= $${TEMP}/debug
} else {
	DESTDIR 	= $${OUTPUT}/release
	OBJECTS_DIR	= $${TEMP}/release
}

win32 {
	LIBS		+=	$${DESTDIR}/SpmXml.lib
	LIBS 		+=	../../common/pg/lib/libpq.lib
} else {
	LIBS		+=	-lspmxml
}

MOC_DIR		= $${OBJECTS_DIR}

PRECOMPILED_HEADER  = stdspm.h
 
HEADERS += GLWidget.h \
 	stdspm.h \
			OpenGISDemo.h
SOURCES	+= GLWidget.cpp \
	OpenGISDemo.cpp
