DIR = src

SOURCE = $(DIR)/main.cpp $(DIR)/tetrisformation.cpp $(DIR)/tetrisgenerators.cpp $(DIR)/tetrismatrix.cpp $(DIR)/tetristimer.cpp $(DIR)/formations/_formation.cpp $(DIR)/formations/lformation.cpp $(DIR)/formations/oformation.cpp $(DIR)/formations/sformation.cpp $(DIR)/formations/tformation.cpp

#LIBS = -lglfw -ldrawtext -lm -lGL -lpthread
LIBS = -lglfw3 -ldrawtext -lm -lGL -lXrandr 
LIBS += -lXrender -lXi -lpthread -pthread -ldl 
LIBS += -ldrm -lXdamage -lXfixes -lX11-xcb -lxcb-glx 
LIBS += -lxcb-dri2 -lXxf86vm -lXext -lrt -lX11 -lxcb -lXau -lXdmcp

IPATH = /usr/include
IPARAM = $(foreach i, $(IPATH), -I$i)

LPATH = /usr/local/lib
LPARAM = $(foreach i, $(LPATH), -L$i)

main:
	g++ $(LPARAM) $(IPARAM) $(SOURCE) $(LIBS) -o tetris.elf -std=c++11

run: main
	./tetris.elf

debug:
	g++ -ggdb $(LPARAM) $(IPARAM) $(SOURCE) $(LIBS) -o tetris.elf -std=c++11
