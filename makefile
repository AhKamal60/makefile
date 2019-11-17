vpath %.c ./Src
vpath %.h ./INC
CC = gcc_S
SRC_PATH =./Src/
LINK_TARGET = app.exe
INCLUDE_PATH =./INC/
DEP_PATH =./Dep/
OBJ = $(DEP_PATH)main.o $(DEP_PATH)LCD.o $(DEP_PATH)DIO.o $(DEP_PATH)code.o
CLEAN_TARGET = $(LINK_TARGET) $(OBJ)
all:$(LINK_TARGET)
	echo Building done !
clean:
	-rm $(CLEAN_TARGET)
	echo Cleaning done !
$(LINK_TARGET): $(OBJ)
# name of the specified object file should be explicitly added here
	$(CC) $^ -o $@
# and here also
	echo Linking done !
#%.o: %.c
code.o : code.c code.h
	$(CC) -c  -I$(INCLUDE_PATH) $< -o $(DEP_PATH)$@
main.o : main.c code.o
	$(CC) -c -I$(INCLUDE_PATH) $< -o $(DEP_PATH)$@
LCD.o : LCD.c LCD.h DIO.h code.o
	$(CC) -c -I$(INCLUDE_PATH) $< -o $(DEP_PATH)$@
DIO.o : DIO.c DIO.h code.o
	$(CC) -c -I$(INCLUDE_PATH) $< -o $(DEP_PATH)$@
 