TEMPLATE = app
CONFIG += console c++11
CONFIG -= app_bundle
CONFIG -= qt
INCLUDEPATH += /usr/local/include
DEPENDPATH += /usr/local/lib
LIBS += -L/usr/local/lib
<<<<<<< HEAD:src/Tetris-qtcreator-project/Tetris-qtcreator.pro
LIBS +=-framework GLUT -framework OpenGL -lglfw -ldrawtext -lm -lpthread
=======
#LIBS +=-framework GLUT -framework OpenGL -lglfw -ldrawtext -lm -lpthread
LIBS += -lglfw -ldrawtext -lm -lGL -lpthread
>>>>>>> upstream/master:src/Tetris-qtcreator.pro

SOURCES += main.cpp \
    tetrismatrix.cpp \
    tetristimer.cpp \
    tetrisformation.cpp \
    tetrisgenerators.cpp \
    formations/tformation.cpp \
    formations/lformation.cpp \
    formations/oformation.cpp \
    formations/_formation.cpp \
    formations/sformation.cpp
<<<<<<< HEAD:src/Tetris-qtcreator-project/Tetris-qtcreator.pro

=======
>>>>>>> upstream/master:src/Tetris-qtcreator.pro


HEADERS += \
    tetrismatrix.hpp \
    tetrisblock.hpp \
    tetristimer.hpp \
    tetrisformation.hpp \
    tetrisgenerators.hpp \
    formations/tformation.hpp \
    formations/lformation.hpp \
    formations/oformation.hpp \
    formations/_formation.hpp \
    formations/sformation.hpp
