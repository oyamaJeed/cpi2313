TARGET := display
SRC := $(TARGET).c
OBJ := $(TARGET).o
DO := libdlink.so
CFLAGS := -g -Wall
CC := gcc $(CFLAGS)
all : $(TARGET)
$(TARGET): $(OBJ) 
	$(CC) -shared $(SRC) -fPIC -o $(DO)
.c.o:
	$(CC) -c $^
clean:
	rm -f $(TARGET) $(OBJ)
	rm -f $(TARGET) $(DO)
